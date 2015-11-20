using UnityEngine;
using System.Collections;

/*
[RequireComponent (typeof (IActorInput))]
[RequireComponent (typeof (IInventory))]
[RequireComponent (typeof (IActorStats))]
*/

public abstract class Actor : MonoBehaviour{
	IActorInput actorInput;
	IActorStats stats;
	Inventory inventory;

	public virtual void Awake(){
		actorInput = (IActorInput)GetComponent(typeof(IActorInput));
		inventory = this.GetComponent<Inventory>();
		stats = (IActorStats)this.GetComponent(typeof(IActorStats));
	}

}
