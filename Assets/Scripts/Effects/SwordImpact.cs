using UnityEngine;
using System.Collections;

public class SwordImpact : SpecialEffect{

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	}

	public override void Run(float size){
		particleSystem.Emit (10);
		GameObject.Destroy (this.gameObject, particleSystem.startLifetime);
	}


}
