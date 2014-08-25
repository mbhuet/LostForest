﻿using UnityEngine;
using System.Collections;

public class TrackTarget : MonoBehaviour {
	public GameObject target;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.position = new Vector3(target.transform.position.x, this.transform.position.y, target.transform.position.z - 20);
	
	}
}
