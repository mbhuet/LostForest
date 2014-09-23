using UnityEngine;
using System.Collections;

/*
[RequireComponent (typeof (IActorInput))]
[RequireComponent (typeof (IInventory))]
[RequireComponent (typeof (IActorStats))]
*/

public abstract class Actor : MonoBehaviour{
	IActorInput actorInput;
	IInventory inventory;
	IActorStats stats;
	ActorMotor motor;

	public virtual void Awake(){
		actorInput = (IActorInput)GetComponent(typeof(IActorInput));
		inventory = (IInventory)this.GetComponent(typeof(IInventory));
		stats = (IActorStats)this.GetComponent(typeof(IActorStats));
		motor = GetComponent<ActorMotor> ();
	}

}
