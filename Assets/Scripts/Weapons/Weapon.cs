using UnityEngine;
using System.Collections;

public abstract class Weapon : Item {
	public float damage;
	public float force;

	protected Actor owner;
	protected bool active;
	public SpecialEffect actorImpact;




	public void SetOwner(Actor a){
		this.owner = a;
	}


}
