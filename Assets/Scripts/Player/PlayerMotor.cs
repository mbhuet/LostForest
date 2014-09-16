using UnityEngine;
using System.Collections;

public class PlayerMotor : MonoBehaviour, IActorMotor {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void Move(Vector3 moveDir){
		gameObject.rigidbody.velocity = (moveDir*4);
	}
	public void Look(Vector3 lookTarget){
		lookTarget.y = gameObject.transform.position.y;
		gameObject.transform.LookAt (lookTarget);
	}
}
