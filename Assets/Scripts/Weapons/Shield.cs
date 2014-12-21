using UnityEngine;
using UnityEngine;
using System.Collections;

public class Shield : HandWeapon {
	
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
		this.active = true;
	}
	public override void HoldUse(int hand){
	}
	public override void EndUse(int hand){
		this.active = false;
		owner.animation["RaiseShield"].time = owner.animation["RaiseShield"].length;
		owner.animation["RaiseShield"].speed = -1f;
		owner.animation.Play("RaiseShield");
	}

	void OnTriggerStay(Collider other){
		
		if (active){
			Weapon w = other.GetComponent<Weapon>();
			if (w != null && w.owner != this.owner){
				w.Block();
			}
		}
	}
	
	
}
