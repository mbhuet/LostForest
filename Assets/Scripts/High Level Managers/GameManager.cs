﻿using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {
	public static GameManager Instance;
	public Vector3 cursorWorldPosition;

	public GameObject cursorTarget;

	public GameObject player;

	// Use this for initialization
	void Start () {
		Instance = this;
		player = GameObject.FindGameObjectWithTag ("Player");
	}
	
	// Update is called once per frame
	void Update () {
		UpdateCursor ();
	}

	void UpdateCursor(){
		LayerMask mask = 1 << LayerMask.NameToLayer("Ground");
		RaycastHit hit;
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		Physics.Raycast(ray, out hit, 100, mask);
		
		if (hit.collider != null){
			//			Debug.Log("Hit Ground");
			cursorWorldPosition = hit.point;
		}

		cursorTarget.transform.position = cursorWorldPosition + Vector3.up * .1f;
	}

	IEnumerator HitTimeSlow(float lowTimeScale){
		Time.timeScale = lowTimeScale;
		int factor = 0;
		while (Time.timeScale < 1) {

			//Time.timeScale = Mathf.Lerp(Time.timeScale, 1, Time.unscaledDeltaTime);
			Time.timeScale += Time.unscaledDeltaTime * factor;
			factor ++;
			yield return null;
		}
		Time.timeScale = 1;
	}


}
