using UnityEngine;
using System.Collections;

public abstract class Weapon : Item {
	protected Actor owner;
	protected bool active;

	//0 is left, 1 is right
	public abstract void BeginUse(int hand);
	public abstract void HoldUse(int hand);
	public abstract void EndUse(int hand);

	public void setOwner(Actor a){
		this.owner = a;
	}


}
