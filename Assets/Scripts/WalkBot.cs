using UnityEngine;
using System.Collections;

public class WalkBot : Actor {
	public bool lockDirections;
	public bool lookAtCursor;
	// Use this for initialization
	void Awake(){

	}

	void Start () {
	}

	void Update(){
		if (lookAtCursor){

		Look ();
		}
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		moveDir = Vector3.right;
		transform.Translate(Vector3.right * moveSpeed, Space.World);
	}

	void Look(){
		LayerMask mask = 1 << LayerMask.NameToLayer("Ground");
		RaycastHit hit;
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		Physics.Raycast(ray, out hit, 100, mask);
		
		if (hit.collider != null){
			//			Debug.Log("Hit Ground");
			Vector3 lookPoint = hit.point;
			lookPoint.y = this.transform.position.y;
			this.transform.LookAt(lookPoint);
			//Debug.DrawLine(this.transform.position, lookPoint, Color.yellow);
			
			if (lockDirections){
				Vector3 modRot = this.transform.eulerAngles;
				modRot.y = modRot.y +45 - (modRot.y+45)%90;
				this.transform.eulerAngles = modRot;
			}
		}
		
	}
}
