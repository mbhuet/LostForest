using UnityEngine;
using System.Collections;

[RequireComponent (typeof(ActorMotor))]
[RequireComponent (typeof(WeaponManager))]
public abstract class ActorInput : MonoBehaviour{
	protected Vector3 moveDir;
	protected Vector3 lookTarget;
	protected ActorMotor motor;
	protected WeaponManager weapons;
	
	public bool forceMoveDirection;
	public Vector3 moveDirection;
	
	// Use this for initialization
	protected void Awake () {
		motor = GetComponent<ActorMotor>();
		weapons = GetComponent<WeaponManager>();
	}

}
