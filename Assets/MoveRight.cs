using UnityEngine;
using System.Collections;

public class MoveRight : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		transform.Translate(Vector3.right * .06f, Space.World);
	}
}
