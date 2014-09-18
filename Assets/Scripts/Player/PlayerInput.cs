using UnityEngine;
using System.Collections;

[RequireComponent (typeof(IActorMotor))]
[RequireComponent (typeof(WeaponManager))]
public class PlayerInput : MonoBehaviour, IActorInput {
	private Vector3 moveDir;
	private Vector3 lookTarget;
	private IActorMotor motor;
	private WeaponManager weapons;

	// Use this for initialization
	void Awake () {
		motor = (IActorMotor)GetComponent(typeof(IActorMotor));
		weapons = GetComponent<WeaponManager>();
	}

	void Update () {
		motor.Look (GameManager.Instance.cursorWorldPosition);

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

	void FixedUpdate () {
		if (Input.GetAxis ("Vertical") != 0 || Input.GetAxis ("Horizontal") != 0) {
			moveDir = new Vector3(Input.GetAxis ("Horizontal"), 0, Input.GetAxis ("Vertical"));
			motor.Move(moveDir);
		}
	}


	// Update is called once per frame

}
