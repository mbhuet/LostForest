using UnityEngine;
using System.Collections;

[RequireComponent (typeof(IActorMotor))]
[RequireComponent (typeof(WeaponManager))]
public class PlayerInput : MonoBehaviour, IActorInput {
	private Vector3 moveDir;
	private Vector3 lookTarget;
	private IActorMotor motor;
	private WeaponManager weapons;
	private Vector3 cursorWorldPosition;

	// Use this for initialization
	void Awake () {
		motor = (IActorMotor)GetComponent(typeof(IActorMotor));
		weapons = GetComponent<WeaponManager>();
	}

	void Update () {
		UpdateCursor();
		motor.Look (cursorWorldPosition);

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

	void UpdateCursor(){
		LayerMask mask = 1 << LayerMask.NameToLayer("Ground");
		RaycastHit hit;
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		Physics.Raycast(ray, out hit, 100, mask);
		
		if (hit.collider != null){
			//			Debug.Log("Hit Ground");
			cursorWorldPosition = hit.point;
		}
	}
	// Update is called once per frame

}
