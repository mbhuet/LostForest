using UnityEngine;
using System.Collections;

public abstract class Weapon : MonoBehaviour {
	protected bool inHand;
	protected GameObject hand;
	//should this weapon lock the player's orientation when being used
	public bool lockOrientation;

	public abstract void Use();

	public void Pickup(GameObject hand){
		inHand = true;
		this.hand = hand;
		this.transform.position = hand.transform.position;

	}
}
