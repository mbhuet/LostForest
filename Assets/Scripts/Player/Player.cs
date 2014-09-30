using UnityEngine;
using System.Collections;

public class Player : Actor {
	public override void Awake(){
		base.Awake ();
	}

	void Start(){
		animation.Blend("0_Idle");
		animation.Blend("1_Idle");

	 }
}
