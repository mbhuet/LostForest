using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent (typeof(Actor))]
public class WeaponManager : MonoBehaviour{
	public List<Weapon> weaponList;


	void Awake(){
		//all starting weapons need to know who onwns them
		foreach (Weapon w in weaponList){
			w.setOwner(this.gameObject.GetComponent<Actor>());
		}
	}

	public void BeginUse(int hand){
		if (hand < weaponList.Count)
		weaponList[hand].BeginUse(hand);
		else
			Debug.LogError("There is no weapon " + hand + " on " + this.gameObject.name);
	}

	public void HoldUse(int hand){
		if (hand < weaponList.Count)
		weaponList[hand].HoldUse(hand);
	}

	public void EndUse(int hand){
		if (hand < weaponList.Count)
		weaponList[hand].EndUse(hand);
	}

	
}
