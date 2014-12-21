using UnityEngine;
using System.Collections;
using Pathfinding;

public class DummyInput : ActorInput {
	Seeker seeker;
	AIPath aiPath;


	void Awake(){
		base.Awake ();
		seeker = this.GetComponent<Seeker> ();
		aiPath = this.GetComponent<AIPath> ();


	}

	public void Start () {
	}
	


	void Update () {

		motor.Look (GameManager.Instance.player.transform.position);
		moveDir = aiPath.CalculateVelocity (aiPath.GetFeetPosition());
		//Debug.Log ("moveDir " +moveDir);

		if (forceMoveDirection)
				moveDir = moveDirection;

		motor.SetMoveDirection(moveDir.normalized);

		if (Vector3.Distance (this.transform.position, GameManager.Instance.player.transform.position) < 3) {
						weapons.BeginUse (1);
				}

	}
	
}
