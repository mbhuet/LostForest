using UnityEngine;
using System.Collections;

public class Player : Actor {
	public override void Awake(){
		base.Awake ();
	}

	void Start(){
		GetComponent<Animation>().Blend("0_Idle");
		GetComponent<Animation>().Blend("1_Idle");

	 }
}
