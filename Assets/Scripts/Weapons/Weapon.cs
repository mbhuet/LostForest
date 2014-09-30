using UnityEngine;
using System.Collections;

public abstract class Weapon : Item {
	public float damage;
	public float force;

	public Actor owner;
	protected bool active;
	protected bool blocked;
	public SpecialEffect actorImpact;

	

	public void Block(){
		if (active) blocked = true;
	}


}
