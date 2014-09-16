using UnityEngine;
using UnityEngine;
using System.Collections;

public class Shield : Weapon {
	
	// Use this for initialization
	void Awake(){
		
	}
	
	void Start (){
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	public override void BeginUse(int hand){
		owner.animation["RaiseShield"].speed = 1f;
		owner.animation.Play("RaiseShield");
	}
	public override void HoldUse(int hand){
	}
	public override void EndUse(int hand){
		owner.animation["RaiseShield"].time = owner.animation["RaiseShield"].length;
		owner.animation["RaiseShield"].speed = -1f;
		owner.animation.Play("RaiseShield");
	}
	
	
}
