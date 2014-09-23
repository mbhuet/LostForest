using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent (typeof(Actor))]
public class WeaponManager : MonoBehaviour{
	public GameObject[] hands;

	Weapon[] weaponList;
	public List<Weapon> startingWeapons;


	void Awake(){
		weaponList = new Weapon[hands.Length];
		//all starting weapons need to know who onwns them
		int index = 0;
		foreach (Weapon w in startingWeapons){
			if (index < hands.Length){
				Weapon startWeapon = GameObject.Instantiate(w) as Weapon;
				weaponList[index] = startWeapon;
				startWeapon.setOwner(this.gameObject.GetComponent<Actor>());

				SetWeapon(startWeapon, index);
			}
			index++;

		}
	}

	public void BeginUse(int hand){
		if (hand < weaponList.Length && weaponList[hand] != null)
		weaponList[hand].BeginUse(hand);
		else
			Debug.Log("There is no weapon " + hand + " on " + this.gameObject.name);
	}

	public void HoldUse(int hand){
		if (hand < weaponList.Length && weaponList[hand] != null)
		weaponList[hand].HoldUse(hand);
	}

	public void EndUse(int hand){
		if (hand < weaponList.Length && weaponList[hand] != null)
		weaponList[hand].EndUse(hand);
	}

	public void SetWeapon(Weapon weapon, int hand){
		if (hand > hands.Length) {
			Debug.LogError(this.gameObject.name + " does not have hand " + hand + " set. Cannot equip Weapon.");		
		}
		else{
			if (weaponList[hand] != null){
				weaponList[hand].transform.parent = null;
				weaponList[hand].transform.position = Vector3.zero;
				weaponList[hand].gameObject.SetActive(false);
			}

			weapon.gameObject.SetActive(true);
			weapon.transform.parent = hands[hand].transform;
			weapon.transform.localPosition = Vector3.zero;
			weapon.transform.localRotation = Quaternion.identity;
			//weapon.transform.localScale = Vector3.one;

			weaponList[hand] = weapon;
		}
	}
}
