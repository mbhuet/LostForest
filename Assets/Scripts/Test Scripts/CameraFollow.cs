using UnityEngine;
using System.Collections;

public class CameraFollow : MonoBehaviour {
	public float height;
	public float distance;
	public bool useLerp;
	public GameObject target;
	// Use this for initialization
	void Start () {
		this.transform.position = new Vector3 (target.transform.position.x, target.transform.position.y + height, target.transform.position.z - distance);
		this.transform.LookAt (target.transform);
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 goalPos = new Vector3 (target.transform.position.x, target.transform.position.y + height, target.transform.position.z - distance);
		if (useLerp) {
			transform.position = Vector3.Lerp(this.transform.position, goalPos, Time.deltaTime);
				} else {
						transform.position = goalPos;
				}
	}
}
