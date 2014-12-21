using UnityEngine;
using System.Collections;

using System.Collections.Generic;
using Pathfinding;
using Pathfinding.RVO;

public abstract class ActorMotor : MonoBehaviour{
	public enum MotorState {WALKING, STUNNED, ROLLING, FLYING};
	public MotorState state;
	protected CharacterController controller;
	protected RVOController rvoController;

	protected Vector3 moveDir;
	public float moveSpeed;

	protected Vector3 knockbackDir;
	
	public abstract void SetMoveDirection(Vector3 moveDir);
	protected abstract void Move(Vector3 movement);
	public abstract void Look(Vector3 lookDir);
	public abstract void Roll();

	protected virtual void Awake(){
		controller = this.GetComponent<CharacterController> ();
		rvoController = this.GetComponent<RVOController> ();

	}

	public void ApplyKnockback(Vector3 force){
		StopCoroutine ("KnockbackRoutine");
		StartCoroutine("KnockbackRoutine", force + knockbackDir);
	}

	protected  IEnumerator KnockbackRoutine(Vector3 force){
		float falloff = 6;
		state = MotorState.STUNNED;
		knockbackDir = force;
		while (knockbackDir.magnitude > .5f) {
			knockbackDir.Scale(Vector3.one * (1-Time.deltaTime * falloff));
			yield return null;
		}
		knockbackDir = Vector3.zero;
		state = MotorState.WALKING;

		//this is necessarye because CharControllers only calculate velocity when Move is called
		if (controller != null)
			controller.Move(Vector3.zero);
		else if (rvoController != null)
			rvoController.Move(Vector3.zero);

	}

}
