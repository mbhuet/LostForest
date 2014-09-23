using UnityEngine;
using System.Collections;

public class MoveRight : MonoBehaviour {
	CharacterController controller;
	public float speed;
	// Use this for initialization
	void Start () {
		controller = this.GetComponent<CharacterController> ();

	}
	
	// Update is called once per frame
	void FixedUpdate () {
		//controller.Move(Vector3.right * Time.fixedDeltaTime);
		this.transform.Translate (Vector3.right * Time.fixedDeltaTime * speed);
	}
}
