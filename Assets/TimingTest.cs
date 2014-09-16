using UnityEngine;
using System.Collections;

public class TimingTest : MonoBehaviour {
	public float hold;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		for (int i = 0; i <2; i++){
			if (Input.GetMouseButtonDown(i)){
				hold = 0;
			}
			if (Input.GetMouseButton(i)){
				hold += Time.deltaTime;
			}
			if (Input.GetMouseButtonUp(i)){
				Debug.Log(hold);
			}
		}
	}
}
