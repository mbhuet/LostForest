using UnityEngine;
using System.Collections;

public class PlayerMotor : ActorMotor {
	BipedWalkAnimation walkAnim;
	public float rollSpeed;
	public float rollTime;

	CharacterController controller;

	void Awake(){
		controller = this.GetComponent<CharacterController> ();
		walkAnim = this.GetComponent<BipedWalkAnimation> ();
	}
	// Use this for initialization
	void Start () {
		state = MotorState.WALKING;
	}
	
	// Update is called once per frame
	void Update () {

	}

	void FixedUpdate(){

		}
	
	public override void Move(Vector3 moveDir){
		this.moveDir = moveDir.normalized;
		if (state == MotorState.WALKING) {
			controller.Move(moveDir * moveSpeed * Time.deltaTime );
			//controller.SimpleMove(moveDir * moveSpeed * Time.deltaTime);
			//controller.SimpleMove(Vector3.up);
		}
	}

	public override void Look(Vector3 lookTarget){
		if (state == MotorState.WALKING) {
						lookTarget.y = gameObject.transform.position.y;
						gameObject.transform.LookAt (lookTarget);
				}
	}

	public override void Roll(){
		if (state == MotorState.WALKING) {
			StartCoroutine ("RollRoutine");
		}
	}

	IEnumerator RollRoutine(){
		state = MotorState.ROLLING;
		walkAnim.enabled = false;

		float t = 0;
		while (t<rollTime) {
			t += Time.fixedDeltaTime;

			Vector3 rollDir = Vector3.RotateTowards(controller.velocity, moveDir, Mathf.PI * Time.fixedDeltaTime, 0).normalized;
			controller.Move(rollDir * rollSpeed * Time.deltaTime);
			this.gameObject.transform.RotateAround(controller.bounds.center, Vector3.Cross(rollDir, Vector3.up), - Mathf.PI * 1);
			Debug.Log(controller.bounds.center);
			yield return new WaitForFixedUpdate();
		}
		this.gameObject.transform.rotation = Quaternion.identity;
		state = MotorState.WALKING;
		walkAnim.enabled = true;
	}
}
