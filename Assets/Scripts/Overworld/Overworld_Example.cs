using UnityEngine;
using System.Collections;

public class Overworld_Example : MonoBehaviour {

	public Camera cam;

	public GameObject layerZero;
	public GameObject layerOne;

	private Vector3 startScale;
	private Vector3 startPos;

	private GameObject currentLayer;

	public float speed;

	// Use this for initialization
	void Start () {
		currentLayer = layerZero;
		startScale = layerZero.transform.localScale;
		startPos = layerZero.transform.position;
		layerOne.gameObject.SetActive(false);
	}
	
	// Update is called once per frame
	void Update () {

		Vector3 deltaPos = Vector3.zero;
	
		if(Input.GetKey(KeyCode.D) || Input.GetKey(KeyCode.RightArrow)){
			deltaPos += Vector3.right * speed * Time.deltaTime;
		}
		else if(Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.LeftArrow)){
			deltaPos += Vector3.left * speed * Time.deltaTime;
		}
		else if(Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow)){
			deltaPos += Vector3.forward * speed * Time.deltaTime;
		}
		else if(Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.DownArrow)){
			deltaPos += -Vector3.forward * speed * Time.deltaTime;
		}

		if(deltaPos != Vector3.zero){
			if(currentLayer == layerZero){
				cam.transform.Translate(deltaPos, Space.World);
			}
			else{
				cam.transform.Translate(deltaPos, Space.World);
				layerZero.transform.Translate(-deltaPos * 0.2f, Space.World);
			}
		}

		if(Input.GetKeyDown(KeyCode.Space)){
			if(currentLayer == layerZero){
				currentLayer = layerOne;
				layerOne.gameObject.SetActive(true);
				layerZero.transform.localScale = startScale * 0.6f;
			}
			else{
				currentLayer = layerZero;
				layerOne.gameObject.SetActive(false);
				layerZero.transform.localScale = startScale;
				layerZero.transform.position = startPos;
			}
		}
	}
}
