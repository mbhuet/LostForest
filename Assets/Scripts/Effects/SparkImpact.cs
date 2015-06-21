using UnityEngine;
using System.Collections;

public class SparkImpact : SpecialEffect {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
	}
	
	public override void Run(float size){
		GetComponent<ParticleSystem>().Emit (50);
		GameObject.Destroy (this.gameObject, GetComponent<ParticleSystem>().startLifetime);
	}
}
