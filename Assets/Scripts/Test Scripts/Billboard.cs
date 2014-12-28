using UnityEngine;
using System.Collections;

public class Billboard : MonoBehaviour {
	public bool continuous;
	// Use this for initialization
	void Start () {
		Vector3 screenPoint = Camera.main.WorldToScreenPoint (this.transform.position);
		screenPoint.z = 0;
		Vector3 worldPoint = Camera.main.ScreenToWorldPoint(screenPoint);
		//this.transform.LookAt(Camera.main.ScreenToWorldPoint(Camera.main.WorldToScreenPoint(this.transform.position)));
		this.transform.LookAt (worldPoint);
	}
	
	// Update is called once per frame
	void Update () {
		if (continuous) {
						Vector3 screenPoint = Camera.main.WorldToScreenPoint (this.transform.position);
						screenPoint.z = 0;
						Vector3 worldPoint = Camera.main.ScreenToWorldPoint (screenPoint);
						//this.transform.LookAt(Camera.main.ScreenToWorldPoint(Camera.main.WorldToScreenPoint(this.transform.position)));
						this.transform.LookAt (worldPoint);
				}
	}
}
