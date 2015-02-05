using UnityEngine;
using System.Collections;

public class MapGeneration : MonoBehaviour {

	// Generation vars
	public int seed;
	// How far can we skip around in the perlin noise field
	// Actual range is offsetRange * 2
	public int offsetRange;
	// Determined from seed
	public int offsetX;
	public int offsetY;
	// These determine the resolution of the map
	public int mapWidth;
	public int mapHeight;
	// Perlin noise wraps on integer values (so each x,y integer combo forms a "field")
	// "Perlin" width/height determines the number of perlin fields we're sampling from
	// Large perlin values (without increase in resolution) cause infreqent sampling & height map spikes
	public int perlinWidth;
	public int perlinHeight;
	// An amplifier is helpful for visualizing
	public float heightAmplifier;
	// Raw height data
	private float[,] heightData;
	private float[,] processingHeightData;
	// Highest value on the map is useful to track for normalizing
	private float globalHeightMax;
	// Flattening is desirable to produce terrain that isn't too variable
	public int flatteningIterations;
	// How many levels the map is being divided into
	public int tiers;

	public Gradient heightColorGradient;

	public Transform worldRoot;
	public Transform blockPrefab;

	// Editor vars
	public string task;
	public float progress;
	private int lastPercent;

	// Use this for initialization
	void Start () {
		//FullMapGeneration();
		BeginMapBlending();
	}

	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.Space)){
			FullMapGeneration();
		}
	}

	private void FullMapGeneration(){
		StartCoroutine(MapGenerationCoroutine());
	}

	private IEnumerator MapGenerationCoroutine(){
		CleanupCheck();
		DetermineSeed();
		SetOffsets();
		yield return StartCoroutine(GenerateHeightMap(true));
		HeightMapProcessing(ref heightData);
		TierDivision(ref heightData);
		yield return StartCoroutine(GenerateLevel());
	}

	private void CleanupCheck(){
		if(worldRoot.childCount > 0 ){
			GameObject.Destroy(worldRoot.gameObject);
			worldRoot = new GameObject().transform;
			worldRoot.name = "World_Root";
		}
	}

	private void DetermineSeed(){
		Random.seed = seed;
	}

	private void SetOffsets(){
		offsetX = Random.Range(-offsetRange, offsetRange);
		offsetY = Random.Range(-offsetRange, offsetRange);
	}

	private IEnumerator GenerateHeightMap(bool pause){

		task = "Generating Height Data";
		progress = 0;
		lastPercent = 0;
		if(heightData == null || heightData.Length == 0) heightData = new float[mapWidth, mapHeight];

		for(int i = 0; i < heightData.GetLength(0); i++){
			for(int j = 0; j < heightData.GetLength(1); j++){
				heightData[i, j] = Mathf.PerlinNoise(offsetX + (i/(float)mapWidth) * perlinWidth, offsetY + (j/(float)mapHeight) * perlinHeight) * heightAmplifier;
				if(pause){
					progress = 100.0f * ((i * mapWidth) + j) / (mapWidth * mapHeight);
					if((int) progress > lastPercent){
						lastPercent = (int) progress;
						yield return null;
					}
				}
			}
		}

		progress = 100.0f;
	}

	private void HeightMapProcessing(ref float[,] heightDataIn){

		if(processingHeightData == null) processingHeightData = new float[mapWidth, mapHeight];
		float localMax = 0;
		globalHeightMax = 0;

		for(int f = 0; f < flatteningIterations; f++){
			for(int i = 0; i < mapWidth; i++){
				for(int j = 0; j < mapHeight; j++){

					localMax = 0;

					//Left
					HeightComparison(ref heightDataIn, ref localMax, i - 1, j);
					//Right
					HeightComparison(ref heightDataIn, ref localMax, i + 1, j);
					//Top
					HeightComparison(ref heightDataIn, ref localMax, i, j - 1);
					//Down
					HeightComparison(ref heightDataIn, ref localMax, i, j + 1);
					//Top-Left
					//HeightComparison(ref localMax, i - 1, j - 1);
					//Top-Right
					//HeightComparison(ref localMax, i + 1, j - 1);
					//Bottom-Left
					//HeightComparison(ref localMax, i - 1, j + 1);
					//Bottom-Right
					//HeightComparison(ref localMax, i + 1, j + 1);

					processingHeightData[i, j] = (localMax + heightDataIn[i, j]) / 2.0f;
					if(processingHeightData[i, j] > globalHeightMax) globalHeightMax = processingHeightData[i, j];
				}
			}

			System.Array.Copy(processingHeightData, heightDataIn, heightData.Length);
			//heightDataIn = processingHeightData;
		}
	}

	private void HeightComparison(ref float[,] heightDataIn, ref float max, int x, int y){
		if(InBounds(x, y) && heightDataIn[x, y] > max) max = heightDataIn[x, y];
	}

	private void TierDivision(ref float[,] heightData){
		float maxHeight = heightAmplifier;
		float norm = 0;
		for(int i = 0; i < mapWidth; i++){
			for(int j = 0; j < mapHeight; j++){
				norm = heightData[i, j] / heightAmplifier;
				heightData[i, j] = Mathf.RoundToInt(norm * tiers);
			}
		}
	}

	private IEnumerator GenerateLevel(){

		task = "Generating Level";
		lastPercent = 0;
		Transform block = null;

		for(int i = 0; i < mapWidth; i++){
			for(int j = 0; j < mapHeight; j++){
				block = GameObject.Instantiate(blockPrefab) as Transform;
				block.transform.parent = worldRoot;
				block.transform.localScale = new Vector3(1, heightData[i, j], 1);
				block.transform.position = new Vector3(i, heightData[i, j] / 2.0f, j);
				block.renderer.material.color = heightColorGradient.Evaluate(heightData[i, j] / globalHeightMax);
				block.name = "Block_" + i + "_" + j;
				// Editor stuff
				//Debug.Log("Generating Level: " + ((i * mapWidth) + j) + "/" + (mapWidth * mapHeight));
				progress = 100.0f * ((i * mapWidth) + j) / (mapWidth * mapHeight);
				if((int) progress > lastPercent){
					lastPercent = (int) progress;
					yield return null;
				}
			}
		}
	}

	private void ApplyHeight(ref Transform block, ref float height, ref float heightMax){
		block.transform.localScale = new Vector3(1, height, 1);
		//Debug.Log(block.transform.localScale.y);
		block.transform.position = new Vector3(block.transform.position.x, height / 2.0f, block.transform.position.z);
		block.renderer.material.color = heightColorGradient.Evaluate(height / heightMax);
	}

	private bool InBounds(int x, int y){
		return ((x > -1 && x < mapWidth) && (y > -1 && y < mapHeight));
	}

	#region Blending

	public int blendIterations;
	private int blendCount;
	private float[,] heightDataStart;
	private float[,] heightDataEnd;
	private float[,] nextHeightDataSet;
	private float heightMaxStart;
	private float heightMaxEnd;
	private float nextHeightMax;
	private Transform[,] blocks;

	private void BeginMapBlending(){
		StartCoroutine(MapBlendingCoroutine());
	}

	private IEnumerator MapBlendingCoroutine(){

		DetermineSeed();
		InitializeObjects();

		yield return StartCoroutine(GenerateHeightMap(false));
		System.Array.Copy(heightData, heightDataStart, heightData.Length);
		HeightMapProcessing(ref heightDataStart);
		TierDivision(ref heightDataStart);
		heightMaxStart = globalHeightMax;

		ResetSeed();
		yield return StartCoroutine(GenerateHeightMap(false));
		System.Array.Copy(heightData, heightDataEnd, heightData.Length);
		HeightMapProcessing(ref heightDataEnd);
		TierDivision(ref heightDataEnd);
		heightMaxEnd = globalHeightMax;

		progress = 0;
		StartCoroutine(GenerateHeightMap(true));
		StartCoroutine(Blending());
	}

	private void InitializeObjects(){

		blendCount = 0;
		heightDataStart = new float[mapWidth, mapHeight];
		heightDataEnd = new float[mapWidth, mapHeight];
		nextHeightDataSet = new float[mapWidth, mapHeight];

		Transform block = null;
		blocks = new Transform[mapWidth, mapHeight];
		for(int i = 0; i < blocks.GetLength(0); i++){
			for(int j = 0; j < blocks.GetLength(1); j++){
				block = GameObject.Instantiate(blockPrefab, new Vector3(i, 1, j), Quaternion.identity) as Transform;
				block.transform.parent = worldRoot;
				blocks[i, j] = block;
			}
		}
	}

	private void ResetSeed(){
		Random.seed = Random.Range(int.MinValue, int.MaxValue);
		SetOffsets();
	}

	private IEnumerator Blending(){
		while(blendCount != blendIterations){
			ApplyBlendedHeightData(ref heightDataStart, ref heightDataEnd, ref heightMaxStart, ref heightMaxEnd, ref progress);

			if(progress == 100.0f){

				blendCount++;
				ResetSeed();

				System.Array.Copy(heightDataEnd, heightDataStart, heightData.Length);
				heightMaxStart = heightMaxEnd;

				System.Array.Copy(heightData, heightDataEnd, heightData.Length);
				HeightMapProcessing(ref heightDataEnd);
				TierDivision(ref heightDataEnd);
				heightMaxEnd = globalHeightMax;

				StartCoroutine(GenerateHeightMap(true));
				progress = 0;

				yield return new WaitForSeconds(0.5f);
			}

			yield return null;
		} 
	}

	private void ApplyBlendedHeightData(ref float[,] heightDataStart, ref float[,] heightDataEnd, ref float heightMaxStart, ref float heightMaxEnd, ref float progress){

		float blendedHeight = 0;
		float blendedMaxHeight = 0;

		for(int i = 0; i < mapWidth; i++){
			for(int j = 0; j < mapHeight; j++){
				blendedHeight = Mathf.Clamp(heightDataStart[i, j] + (heightDataEnd[i, j] - heightDataStart[i, j]) * (progress / 100.0f), 0, heightAmplifier);
				blendedMaxHeight = Mathf.Clamp(heightMaxStart + (heightMaxEnd - heightMaxStart) * (progress / 100.0f), 0, heightAmplifier);
				ApplyHeight(ref blocks[i, j], ref blendedHeight, ref blendedMaxHeight);
			}
		}
	}

	#endregion
}
