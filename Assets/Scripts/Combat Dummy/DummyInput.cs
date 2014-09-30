using UnityEngine;
using System.Collections;
using Pathfinding;

public class DummyInput : ActorInput {
	Seeker seeker;

	void Awake(){
		base.Awake ();
		seeker = this.GetComponent<Seeker> ();

	}

	void Start(){
//w		seeker.StartPath (transform.position,Vector3.zero, OnPathComplete);

		
	}

	void Update () {
		
		motor.Look (GameManager.Instance.player.transform.position);


		if (forceMoveDirection)
						moveDir = moveDirection;
				else {
		//				moveDir = (navigator.transform.position - this.transform.position);
			moveDir.y = 0;
				}

		motor.Move(moveDir.normalized);
		

	}

	public void OnPathComplete (Path p) {
		//Debug.Log ("Yay, we got a path back. Did it have an error? "+p.error);
	}
}
