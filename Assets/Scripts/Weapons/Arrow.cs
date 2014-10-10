using UnityEngine;
using System.Collections;

public class Arrow : ProjectileWeapon {
	public float lifeTime;

	// Use this for initialization
	void Start () {
		Launch (Vector3.one);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public override void Launch (Vector3 direction){
		active = true;
		StartCoroutine ("Travel", direction);
	}

	IEnumerator Travel(Vector3 direction){
		float t = 0;
		while (t < lifeTime) {
			t += Time.deltaTime;
			this.transform.Translate(Vector3.forward * speed * Time.deltaTime, Space.Self);
			yield return null;
		}


		Destroy ();
		
	}

	public void OnTriggerEnter(Collider other){

		if (active){
//			Debug.Log("arrow strike");

			if (other.GetComponent<Health>() && other.gameObject != this.owner.gameObject){
				//Hit an actor
				if (!blocked){

					//SPECIAL EFFECT
					SpecialEffect actEffect = (SpecialEffect)GameObject.Instantiate (actorImpact, other.bounds.center, Quaternion.identity) as SpecialEffect;
					actEffect.Run (1);
					actEffect.transform.parent = other.transform;
					
					//*****************************
					
					Vector3 forceDir = (other.transform.position - owner.transform.position).normalized;
					forceDir.y = 0;
					other.GetComponent<Health>().Damage(damage, forceDir * force);
				}

				else{
					SpecialEffect blockEffect = (SpecialEffect)GameObject.Instantiate (blockedImpact, this.collider.bounds.center + this.transform.forward * this.collider.bounds.extents.z, this.transform.rotation) as SpecialEffect;
					blockEffect.Run (1);
				}

				Destroy();
			}

		}
	}

	void Destroy(){
		GameObject.Destroy (this.gameObject);

	}
}
