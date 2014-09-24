using UnityEngine;
using System.Collections;

[RequireComponent (typeof(NavMeshAgent))]
public class DummyInput : ActorInput {
	NavMeshAgent navigator;

	void Awake(){
		base.Awake ();
		navigator = this.GetComponent<NavMeshAgent> ();
	}
	void Update () {
		
		motor.Look (GameManager.Instance.player.transform.position);

		//navigator.SetDestination (GameManager.Instance.player.transform.position);
		
		if (forceMoveDirection)
			moveDir = moveDirection;
		else
			moveDir = Vector3.zero;

		motor.Move(moveDir.normalized);
		

	}
}
