using UnityEngine;
using System.Collections;

public abstract class ProjectileWeapon : Weapon {
	public float speed;
	public float size;
	public float maxSize;
	public SpecialEffect destinationImpact;

	// Use this for initialization
	public abstract void Launch (Vector3 destination);


}
