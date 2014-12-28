using UnityEngine;
using System.Collections;

public class EnergyBall : ProjectileWeapon {

	// Use this for initialization
	void Awake () {
		size = 1;
		this.transform.localScale = Vector3.one * size;

	}
	
	// Update is called once per frame
	void Update () {
		this.transform.localScale = Vector3.one * size;
	}

	public override void Launch (Vector3 destination){
		StartCoroutine ("Travel", destination);
	}

	public void Explode(){
		Collider[] hits = Physics.OverlapSphere (this.transform.position, this.size);
		foreach (Collider other in hits) {
//			Debug.Log (other.gameObject.name);

			if (other.GetComponent<Health>() && other.gameObject != this.owner.gameObject){
			
				//SPECIAL EFFECT
				SpecialEffect actEffect = (SpecialEffect)GameObject.Instantiate (actorImpact, other.bounds.center, Quaternion.identity) as SpecialEffect;
				actEffect.Run (1);
				actEffect.transform.parent = other.transform;

				//*****************************

				Vector3 forceDir = (other.transform.position - this.transform.position).normalized;
				forceDir.y = 0;
				other.GetComponent<Health>().Damage(damage, forceDir * force * size);
			}
		}
		SpecialEffect destEffect = (SpecialEffect)GameObject.Instantiate (destinationImpact, this.transform.position + Vector3.up * .1f, Quaternion.identity) as SpecialEffect;
		destEffect.Run (size);
		GameObject.Destroy (this.gameObject);
	}

	void OnTriggerEnter(Collider col){
		/*
		if (active){
			Actor act = col.gameObject.GetComponent<Actor>();
			if (act != null){
				if (act != this.owner){

				//SPECIAL EFFECT
				GameObject obj = (GameObject)GameObject.Instantiate(strikeEffect, col.collider.bounds.center, Quaternion.identity) as GameObject;
				IEffect effect = (IEffect) obj.gameObject.GetComponent( typeof(IEffect) );
				effect.Run();
				obj.transform.parent = col.transform;
				
				//*****************************
				
				Vector3 forceDir = (act.transform.position - this.transform.position).normalized;
				forceDir.y = 0;
				act.GetComponent<ActorMotor>().Knockback(forceDir * size * 2);
				}
			}
		}
		*/
	}

	IEnumerator Travel(Vector3 destination){
		Vector3 origin = this.transform.position;
		float t = 0;
		while (t < 1) {
			t += Time.deltaTime * speed;
			this.transform.position = Vector3.Lerp(origin, destination, t);
			yield return null;
		}

		Explode ();


	}
}
