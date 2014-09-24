using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {
	public float health;


	void Awake(){
	}

	public void Damage(float hit, Vector3 force){
		Debug.Log ("Damage " + hit + " to " + this.gameObject.name);
		health -= hit;
		if (GetComponent<ActorMotor> ()) {
			GetComponent<ActorMotor> ().ApplyKnockback(force);
		}

		if (health <= 0) {
			Die();		
		}
	}

	void Die(){
		GameObject.Destroy (this.gameObject);
	}
}
