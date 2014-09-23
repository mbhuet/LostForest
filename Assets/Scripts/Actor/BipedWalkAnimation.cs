using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Actor))]
public class BipedWalkAnimation : MonoBehaviour {

	Actor actor;
	CharacterController controller;
	public bool useCharacterController;
	public GameObject leftFoot;
	public GameObject rightFoot;

	GameObject leftOrigin;
	GameObject rightOrigin;

	GameObject[] feet;
	GameObject[] origins;
	Vector3[] footprints;
	Vector3[] lastPosition;
	Vector3[] stickPositions;
	Quaternion[] stickRotations;


	//will be used to move feet if player pivots in place
	Quaternion lastRotation;

	// 0 is left, 1 is right
	int activeFoot;
	
	Vector3 oldPos;
	float speed;
	Vector3 velocity;

	public float stepLength = 1;
	public float stepHeight = .5f;

	bool idle = true;

	// Use this for initialization
	void Awake () {
		actor = this.gameObject.GetComponent<Actor>();
		if (useCharacterController) controller = this.gameObject.GetComponent<CharacterController>();

		feet = new GameObject[]{leftFoot, rightFoot};

		CreateOriginPoints();
		origins = new GameObject[]{leftOrigin, rightOrigin};

		footprints = new Vector3[]{leftOrigin.transform.position, rightOrigin.transform.position};
		lastPosition = new Vector3[2];
		stickPositions = new Vector3[]{feet[0].transform.position, feet[1].transform.position};
		stickRotations = new Quaternion[]{feet[0].transform.rotation, feet[1].transform.rotation};



	}

	void Start(){
		oldPos = this.transform.position;
		if (leftFoot == null || rightFoot == null){
			Debug.LogError(this.name + " does not have both feet added to the WalkAnimation script.");
		}

		//leftFoot.transform.parent = null;
		//rightFoot.transform.parent =  null;

		activeFoot = 0;
		lastRotation = this.transform.rotation;
	}

	
	void Update(){
		if (useCharacterController) {
						velocity = controller.velocity;		
				} else
						velocity = rigidbody.velocity;
		MoveFoot();
	}

	void MoveFoot(){
		CalculateSpeed();
		UpdateFootprints();
		float footSpeed = speed * 2;

		if (velocity.magnitude != 0) {
			idle = false;

		}
		//if the actor is no longer moving, feet should continue to move until idle stance is reached
		else {
			if ((Vector3.Distance(feet[0].transform.position, footprints[0]) > .05f || 
			     Vector3.Distance(feet[1].transform.position, footprints[1]) > .05f) && !idle){
				footSpeed = .1f;
			}
			//Idle stance reached
			else{
				if (!idle){
					idle = true;
					SwitchFoot();
				}
				//if the player has pivoted enough that we need to rearrange feet
				if (Quaternion.Angle (lastRotation, transform.rotation) > 80) {
					idle = false;	
				}
			}
		}

		// if the actor is not idle, the active foot should move
		if (!idle) {
			for (int i = 0; i < 2; i++) {
					if (i == activeFoot) {
							feet [i].transform.localRotation = Quaternion.identity;		
							feet [i].transform.position = Vector3.MoveTowards (lastPosition [i], footprints [i], footSpeed);
					} 
				//inactive foot needs to be kept in place
				else {
							feet [i].transform.position = stickPositions [i];
							feet [i].transform.rotation = stickRotations [i];

					}
			}
			//if the active foot is really close to its target, move it the rest of the way and switch the active foot
			if (Vector3.Distance (feet [activeFoot].transform.position, footprints [activeFoot]) < 0.01f) {
					feet [activeFoot].transform.position = footprints [activeFoot];

					SwitchFoot ();
			}


			} else {
		for (int i = 0; i < 2; i++) {
			feet [i].transform.position = stickPositions [i];
			feet [i].transform.rotation = stickRotations [i];
		}
			}

		for (int i = 0; i < 2; i++){
			lastPosition[i] = feet[i].transform.position;
		}
	}


	void SwitchFoot(){
		lastRotation = transform.rotation;
		stickPositions [activeFoot] = feet [activeFoot].transform.position;
		stickRotations [activeFoot] = feet [activeFoot].transform.rotation;

		if (activeFoot == 0){
			activeFoot = 1;
		}
		else {
			activeFoot = 0;
		}

		//rubber band new active foot to correct position
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
			Vector3 moveDir = velocity;
			if (moveDir.magnitude > 1) moveDir.Normalize();
			footprints[i] = origins[i].transform.position + moveDir * stepLength;
		}
	}

}
