using UnityEngine;
using System.Collections;


public abstract class Actor : MonoBehaviour{
	ActorMotor motor;

	public virtual void Awake(){
		motor = GetComponent<ActorMotor> ();
	}





}
