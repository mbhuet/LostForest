using UnityEngine;
using System.Collections;

public class WalkAnimation : MonoBehaviour {

	Actor actor;
	public GameObject leftFoot;
	public GameObject rightFoot;

	GameObject leftOrigin;
	GameObject rightOrigin;

	GameObject[] feet;
	GameObject[] origins;
	Vector3[] footprints;
	Vector3[] old_footprints;

	// 0 is left, 1 is right
	int activeFoot;
	
	Vector3 oldPos;
	float speed;

	public float stepLength = 1;
	public float stepHeight = .5f;

	// Use this for initialization
	void Awake () {
		oldPos = this.transform.position;
		actor = this.gameObject.GetComponent<Actor>();

		if (leftFoot == null || rightFoot == null){
			Debug.LogError(this.name + " does not have both feet added to the WalkAnimation script.");
		}

		leftFoot.transform.parent = null;
		rightFoot.transform.parent =  null;
		feet = new GameObject[]{leftFoot, rightFoot};

		CreateOriginPoints();
		origins = new GameObject[]{leftOrigin, rightOrigin};

		footprints = new Vector3[]{leftOrigin.transform.position, rightOrigin.transform.position};

		old_footprints = new Vector3[2];

		activeFoot = 0;
	}
	
	void Update () {

	}

	
	void FixedUpdate(){
		MoveFoot();
	}

	void MoveFoot(){
		CalculateSpeed();

		feet[activeFoot].transform.rotation = this.transform.rotation;

		UpdateFootprints();
		float delta_footprint = Vector3.Distance(old_footprints[activeFoot], footprints[activeFoot]);


		/* USED for checking ground level
		LayerMask mask = 1 << LayerMask.NameToLayer("Ground");
		RaycastHit hit;
		Ray ray = new Ray(footprint + Vector3.up * 1, Vector3.down);
		Physics.Raycast(ray, out hit, 1, mask);

		if (hit.collider == null){
			footprint = activeOrigin.transform.position;
		}
		else
			footprint.y = hit.point.y;
		*/

		float footSpeed = speed * 2;

		//TODO, force walker to return to idle stance if no moveDir
		//footSpeed = Mathf.Max(.1f, footSpeed);

		Vector3 stepDirection = (footprints[activeFoot] - feet[activeFoot].transform.position).normalized;

		if (Vector3.Distance(feet[activeFoot].transform.position, footprints[activeFoot]) < footSpeed){
			feet[activeFoot].transform.Translate(stepDirection * footSpeed, Space.World);
			feet[activeFoot].transform.position = new Vector3(feet[activeFoot].transform.position.x,
			                                                  origins[activeFoot].transform.position.y,
			                                                  feet[activeFoot].transform.position.z);
			SwitchFoot();
		}
		else{
			feet[activeFoot].transform.Translate(stepDirection * footSpeed, Space.World);

			/*
			float foot_y = -(stepHeight/(stepLength*stepLength)) * Mathf.Pow(Vector3.Distance(origins[activeFoot].transform.position, new Vector3(feet[activeFoot].transform.position.x, origins[activeFoot].transform.position.y, feet[activeFoot].transform.position.z)),2) + stepHeight;
			Debug.Log(foot_y);
			feet[activeFoot].transform.position = new Vector3(feet[activeFoot].transform.position.x,
			                                                  foot_y,
			                                                  feet[activeFoot].transform.position.z);
			*/
		}




	}


	void SwitchFoot(){

		if (activeFoot == 0){
			activeFoot = 1;
		}
		else {
			activeFoot = 0;
		}

		if (Vector3.Distance(feet[activeFoot].transform.position, origins[activeFoot].transform.position) > stepLength){
			feet[activeFoot].transform.position = origins[activeFoot].transform.position + (feet[activeFoot].transform.position - origins[activeFoot].transform.position).normalized * stepLength;
		}
	}

	void CreateOriginPoints(){
		leftOrigin = new GameObject();
		leftOrigin.name = "leftOrigin";
		leftOrigin.transform.position = leftFoot.transform.position;
		leftOrigin.transform.parent = this.transform;

		rightOrigin = new GameObject();
		rightOrigin.name = "rightOrigin";
		rightOrigin.transform.position = rightFoot.transform.position;
		rightOrigin.transform.parent = this.transform;
	}

	void CalculateSpeed(){
		speed = Vector3.Distance(this.transform.position, oldPos);
		oldPos = this.transform.position;
	}

	void UpdateFootprints(){
		for (int i = 0; i < 2; i++){
			old_footprints[i] = new Vector3(footprints[i].x, footprints[i].y, footprints[i].z);
			footprints[i] = origins[i].transform.position + actor.moveDir * stepLength;
		}
	}
}
