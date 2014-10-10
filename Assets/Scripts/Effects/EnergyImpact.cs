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
		particleSystem.startSize = size * 2;
		particleSystem.Emit (1);
		GameObject.Destroy (this.gameObject, particleSystem.startLifetime);
	}

	private void SetStartSize(float size){
		ParticleSystem.Particle[] _particles = new ParticleSystem.Particle[1];
		this.particleSystem.GetParticles(_particles);

		ParticleSystem.Particle wave = _particles[0];
		wave.color = Color.red;
		wave.size = size * 100;
		Debug.Log ("here");

		this.particleSystem.SetParticles(_particles, 1);

	}
}
