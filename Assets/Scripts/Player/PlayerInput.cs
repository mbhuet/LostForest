using UnityEngine;
using System.Collections;

[RequireComponent (typeof(ActorMotor))]
[RequireComponent (typeof(WeaponManager))]
public class PlayerInput : MonoBehaviour, IActorInput {
	private Vector3 moveDir;
	private Vector3 lookTarget;
	private ActorMotor motor;
	private WeaponManager weapons;

	public bool forceMoveDirection;
	public Vector3 moveDirection;

	// Use this for initialization
	void Awake () {
		motor = GetComponent<ActorMotor>();
		weapons = GetComponent<WeaponManager>();
	}


	void Update () {
		if (Input.GetKeyDown (KeyCode.Space)) {
			motor.Roll();		
		}

		motor.Look (GameManager.Instance.cursorWorldPosition);

		if (forceMoveDirection)
						moveDir = moveDirection;
		else
		moveDir = new Vector3(Input.GetAxis ("Horizontal"), 0, Input.GetAxis ("Vertical"));
		motor.Move(moveDir.normalized);

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
