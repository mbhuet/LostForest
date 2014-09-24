using UnityEngine;
using System.Collections;

public abstract class Projectile : MonoBehaviour {
	public float speed;
	public float size;
	public float maxSize;
	public SpecialEffect actorImpact;
	public SpecialEffect destinationImpact;

	protected Actor owner;

	public void SetOwner(Actor a){
		owner = a;
	}

	// Use this for initialization
	public abstract void Launch (Vector3 destination);

}
