﻿using UnityEngine;
using System.Collections;

public class Dummy : Actor {

	// Use this for initialization
	void Start () {
		GetComponent<Rigidbody>().WakeUp ();
	}
	
	// Update is called once per frame
	void Update () {

//		Debug.Log (rigidbody.IsSleeping());

	}
}
