using UnityEngine;
using System.Collections;
using Pathfinding;

public class DummyInput : ActorInput {
	Seeker seeker;
	Path path;
	float repathRate = 1;


	void Awake(){
		base.Awake ();
		seeker = this.GetComponent<Seeker> ();

	}

	public void Start () {
		UpdatePath ();
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

	public void UpdatePath(){
		path = seeker.StartPath (this.transform.position, GameManager.Instance.player.transform.position, OnPathComplete);
		}

	public void OnPathComplete (Path p) {
		Debug.Log ("Yay, we got a path back. Did it have an error? "+p.error);
	}
}
