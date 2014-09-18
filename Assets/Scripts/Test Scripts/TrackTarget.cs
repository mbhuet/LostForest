using UnityEngine;
using System.Collections;

public class TrackTarget : MonoBehaviour {
	public bool useLerp;
	public GameObject target;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 goalPos = new Vector3 (target.transform.position.x, this.transform.position.y, target.transform.position.z - 20);
		if (useLerp) {
			transform.position = Vector3.Lerp(this.transform.position, goalPos, Time.deltaTime);
				} else {
						transform.position = goalPos;
				}
	}
}
