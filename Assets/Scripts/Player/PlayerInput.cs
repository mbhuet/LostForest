using UnityEngine;
using System.Collections;



public class PlayerInput : ActorInput {


	void Update () {
		if (Input.GetKeyDown (KeyCode.Space)) {
			motor.Roll();		
		}

		motor.Look (GameManager.Instance.cursorWorldPosition);

		if (forceMoveDirection)
						moveDir = moveDirection;
		else
		moveDir = new Vector3(Input.GetAxis ("Horizontal"), 0, Input.GetAxis ("Vertical"));

		//We don't want diagonal movement to be faster than up-down or left-right
		if (moveDir.magnitude > 1)
						moveDir.Normalize ();

		motor.SetMoveDirection(moveDir);

		for (int i = 0; i <2; i++){
			if (Input.GetMouseButtonDown(i)){
				weapons.BeginUse(i);
			}
			if (Input.GetMouseButton(i)){
				weapons.HoldUse(i);
			}
			if (Input.GetMouseButtonUp(i)){
				weapons.EndUse(i);
			}
		}
	}
}
