using UnityEngine;
using System.Collections;

public class CheckVelocity : MonoBehaviour {
	CharacterController controller;
	public bool useCharacterController;
	// Use this for initialization
	void Start () {
		if (useCharacterController) controller = this.gameObject.GetComponent<CharacterController>();

	}
	
	// Update is called once per frame
	void Update () {
		Vector3 v = Vector3.zero;
		if (useCharacterController)
						v = controller.velocity;
				else
						v = rigidbody.velocity;
		Debug.Log ("Velocity Check " + v);

	}
}
