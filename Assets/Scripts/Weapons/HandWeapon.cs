using UnityEngine;
using System.Collections;

public abstract class HandWeapon : Weapon {

	//0 is left, 1 is right
	public abstract void BeginUse(int hand);
	public abstract void HoldUse(int hand);
	public abstract void EndUse(int hand);

}
