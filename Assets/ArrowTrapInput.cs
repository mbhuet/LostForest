using UnityEngine;
using System.Collections;

public class ArrowTrapInput : ActorInput {

	// Use this for initialization
	void Start () {
		StartCoroutine ("AutoFire", 2);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	IEnumerator AutoFire(float interval){
		while (true) {

			yield return new WaitForSeconds(interval);
			weapons.BeginUse(0);

		}
	}
}
