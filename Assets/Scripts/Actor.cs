using UnityEngine;
using System.Collections;

[RequireComponent (typeof (IActorInput))]
[RequireComponent (typeof (IInventory))]
[RequireComponent (typeof (IHealth))]

public abstract class Actor : MonoBehaviour{
	IActorInput actorInput;
	IInventory inventory;
	IHealth health;

	public virtual void Awake(){
		actorInput = (IActorInput)GetComponent(typeof(IActorInput));
		inventory = (IInventory)this.GetComponent(typeof(IInventory));
		health = (IHealth)this.GetComponent(typeof(IHealth));
	}

}
