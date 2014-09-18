using UnityEngine;
using System.Collections;

public abstract class Projectile : MonoBehaviour {
	public float speed;
	public float size;
	public float maxSize;
	public GameObject strikeEffect;

	// Use this for initialization
	public abstract void Launch (Vector3 destination);

}
