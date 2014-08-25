using UnityEngine;
using System.Collections;

public abstract class Actor : MonoBehaviour{
	public Vector3 moveDir;
	public float health;
	public float stamina;

	public float moveSpeed = .06f;

	public Weapon rightWeapon;
	public Weapon leftWeapon;
	protected bool twoHanded;

}
