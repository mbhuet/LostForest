using UnityEngine;
using System.Collections;

public class Sword : Weapon {


	// Use this for initialization
	void Awake(){
		lockOrientation = true;

	}

	void Start (){
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public override void Use(){
		hand.transform.LookAt(GameManager.cursorWorldPosition);
	}

}
