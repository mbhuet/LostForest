using UnityEngine;
using System.Collections;

public abstract class Weapon : Item {

	public abstract void BeginUse();
	public abstract void HoldUse();
	public abstract void EndUse();


}
