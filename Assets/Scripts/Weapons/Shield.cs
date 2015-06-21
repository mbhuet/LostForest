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
		owner.GetComponent<Animation>()["RaiseShield"].speed = 1f;
		owner.GetComponent<Animation>().Play("RaiseShield");
		this.active = true;
	}
	public override void HoldUse(int hand){
	}
	public override void EndUse(int hand){
		this.active = false;
		owner.GetComponent<Animation>()["RaiseShield"].time = owner.GetComponent<Animation>()["RaiseShield"].length;
		owner.GetComponent<Animation>()["RaiseShield"].speed = -1f;
		owner.GetComponent<Animation>().Play("RaiseShield");
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
