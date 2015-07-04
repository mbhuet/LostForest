using UnityEngine;
using System.Collections;

public class PathfinderMotor : ActorMotor {	
	
	protected override void Awake(){
		base.Awake ();
	}
	// Use this for initialization
	void Start () {
		state = MotorState.WALKING;
	}
	
	// Update is called once per frame
	void Update () {
		
		if (state == MotorState.WALKING) {
			//Move (moveDir);
			
		} else if (state == MotorState.STUNNED) {
			//Move (knockbackDir * Time.deltaTime);
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

	}

}
