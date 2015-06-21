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
		FullMapGeneration();
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
		yield return StartCoroutine(GenerateHeightMap());
		HeightMapProcessing();
		TierDivision();
		yield return StartCoroutine(GenerateLevel());
	}

	private void CleanupCheck(){
		if(worldRoot.childCount > 0){
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

	private IEnumerator GenerateHeightMap(){

		task = "Generating Height Data";
		progress = 0;
		heightData = new float[mapWidth, mapHeight];

		for(int i = 0; i < heightData.GetLength(0); i++){
			for(int j = 0; j < heightData.GetLength(1); j++){
				heightData[i, j] = Mathf.PerlinNoise(offsetX + (i/(float)mapWidth) * perlinWidth, offsetY + (j/(float)mapHeight) * perlinHeight) * heightAmplifier;
				//Debug.Log("Generating Height Data: " + ((i * mapWidth) + j) + "/" + (mapWidth * mapHeight));
				progress = 100.0f * ((i * mapWidth) + j) / (mapWidth * mapHeight);
				if((int) progress > lastPercent){
					lastPercent = (int) progress;
					yield return null;
				}
			}
		}
	}

	private void HeightMapProcessing(){

		float[,] newHeightData = new float[mapWidth, mapHeight];
		float localMax = 0;
		globalHeightMax = 0;

		for(int f = 0; f < flatteningIterations; f++){
			for(int i = 0; i < mapWidth; i++){
				for(int j = 0; j < mapHeight; j++){

					localMax = 0;

					//Left
					HeightComparison(ref localMax, i - 1, j);
					//Right
					HeightComparison(ref localMax, i + 1, j);
					//Top
					HeightComparison(ref localMax, i, j - 1);
					//Down
					HeightComparison(ref localMax, i, j + 1);
					//Top-Left
					//HeightComparison(ref localMax, i - 1, j - 1);
					//Top-Right
					//HeightComparison(ref localMax, i + 1, j - 1);
					//Bottom-Left
					//HeightComparison(ref localMax, i - 1, j + 1);
					//Bottom-Right
					//HeightComparison(ref localMax, i + 1, j + 1);

					newHeightData[i, j] = (localMax + heightData[i, j]) / 2.0f;
					if(newHeightData[i, j] > globalHeightMax) globalHeightMax = newHeightData[i, j];
				}
			}

			heightData = newHeightData;
		}
	}

	private void HeightComparison(ref float max, int x, int y){
		if(InBounds(x, y) && heightData[x, y] > max) max = heightData[x, y];
	}

	private void TierDivision(){
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
				block.GetComponent<Renderer>().material.color = heightColorGradient.Evaluate(heightData[i, j] / globalHeightMax);
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

	private bool InBounds(int x, int y){
		return ((x > -1 && x < mapWidth) && (y > -1 && y < mapHeight));
	}
}
