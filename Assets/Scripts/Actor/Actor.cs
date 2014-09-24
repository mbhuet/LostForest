using UnityEngine;
using System.Collections;

/*
[RequireComponent (typeof (IActorInput))]
[RequireComponent (typeof (IInventory))]
[RequireComponent (typeof (IActorStats))]
*/

public abstract class Actor : MonoBehaviour{
	ActorMotor motor;

	public float health;




	public virtual void Awake(){
		motor = GetComponent<ActorMotor> ();
	}





}
