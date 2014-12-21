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

		walkAnim = this.GetComponent<BipedWalkAnimation> ();

		state = MotorState.WALKING;
	}
	
	// Update is called once per frame
	void Update () {

		if (state == MotorState.WALKING) {
						Move (moveDir * moveSpeed * Time.deltaTime);
			
				} else if (state == MotorState.STUNNED) {
						Move (knockbackDir * Time.deltaTime);
				}

	}

	void FixedUpdate(){

		}
	

	public override void SetMoveDirection(Vector3 moveDir){
		this.moveDir = moveDir;
	}

	public override void Look(Vector3 lookTarget){
		if (state == MotorState.WALKING) {
						lookTarget.y = gameObject.transform.position.y;
						gameObject.transform.LookAt (lookTarget);
		}
	}

	protected override void Move(Vector3 movement){
		if (controller != null)
			controller.Move (movement);
		else if (rvoController != null)
			rvoController.Move (movement);
	}

	public override void Roll(){
		if (state == MotorState.WALKING) {
			StartCoroutine ("RollRoutine");
		}
	}

	IEnumerator RollRoutine(){
		collider.enabled = false;

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

		collider.enabled = true;

	}
}
