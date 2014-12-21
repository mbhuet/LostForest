using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {
	public float maxHealth;
	float health;
	public LineCircle healthCircle;
	
	void Awake(){
	}

	void Start(){
		health = maxHealth;

		if (healthCircle != null) {
						healthCircle.transform.position = new Vector3 (this.transform.position.x, .1f, this.transform.position.z);
						healthCircle.transform.parent =  this.transform;
				}
	}

	void Update(){
		if (healthCircle != null) healthCircle.transform.rotation = Quaternion.identity;
	}

	public void Damage(float hit, Vector3 force){
		//If the actor is stunned, don't apply more damage
		//if (GetComponent<ActorMotor> () && GetComponent<ActorMotor> ().state == ActorMotor.MotorState.STUNNED)
						//return;

		Debug.Log ("Damage " + hit + " to " + this.gameObject.name);
		health -= hit;

		if (healthCircle != null) healthCircle.SetPercentage (health / maxHealth);

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
