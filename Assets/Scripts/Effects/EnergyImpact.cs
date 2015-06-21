using UnityEngine;
using System.Collections;

public class EnergyImpact : SpecialEffect {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
	}
	
	public override void Run(float size){
		GetComponent<ParticleSystem>().startSize = size * 2;
		GetComponent<ParticleSystem>().Emit (1);
		GameObject.Destroy (this.gameObject, GetComponent<ParticleSystem>().startLifetime);
	}

	private void SetStartSize(float size){
		ParticleSystem.Particle[] _particles = new ParticleSystem.Particle[1];
		this.GetComponent<ParticleSystem>().GetParticles(_particles);

		ParticleSystem.Particle wave = _particles[0];
		wave.color = Color.red;
		wave.size = size * 100;
		Debug.Log ("here");

		this.GetComponent<ParticleSystem>().SetParticles(_particles, 1);

	}
}
