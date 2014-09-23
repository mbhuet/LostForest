using UnityEngine;
using System.Collections;

public class ChildStay : MonoBehaviour {
	public GameObject child;
	Vector3 origin;
	// Use this for initialization
	void Start () {
		origin = child.transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		child.transform.position = origin;
	}
}
