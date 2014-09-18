using UnityEngine;
using System.Collections;

public class Player : Actor {
	public override void Awake(){
		base.Awake ();
	}

	void Start(){
		animation.Play("Idle");
	             }

}
	/*
	public bool lockDirections;
	public bool lookAtCursor;

	public float armLength;
	

	GameObject rightHand;
	GameObject leftHand;

	Animator animator;
	CharacterController controller;

	// Use this for initialization
	void Awake(){
		animator = this.GetComponent<Animator>();
		controller = this.GetComponent<CharacterController>();

		//animation["AttackMelee1"].blendMode = AnimationBlendMode.Additive;
		//animation["AttackMelee2"].blendMode = AnimationBlendMode.Additive;
		//animation["RaiseShield"].blendMode = AnimationBlendMode.Additive;

		rightHand = GameObject.Find("R Hand");
		leftHand = GameObject.Find("L Hand");

	}

	void Start () {
		if (leftWeapon) leftWeapon.Pickup(leftHand);
		if (rightWeapon) rightWeapon.Pickup(rightHand);
	}

	void Update(){

		UseWeapon();

	}
	
	// Update is called once per frame
	void FixedUpdate () {
		Move ();
		if (lookAtCursor){
			Look();
		}
	}
	

	void CheckInput(){

	}

	void Move(){
		moveDir = new Vector3(Input.GetAxis("Horizontal"),0,Input.GetAxis("Vertical"));
		//moveDir = Vector3.right;
		if (moveDir.magnitude > 1) 
			moveDir.Normalize();
		//controller.Move(moveDir * moveSpeed);
		//controller.Move(moveDir * moveSpeed * Time.deltaTime);
		transform.Translate(moveDir * moveSpeed * Time.deltaTime, Space.World);
//		Debug.Log(moveDir * moveSpeed * Time.deltaTime);
	}

	void UseWeapon(){
		if (Input.GetButtonDown("UseLeft")){
			//Debug.Log("Left hand");
			animation["RaiseShield"].speed = 1f;
			animation.Play("RaiseShield");
		}
		if (Input.GetButtonUp("UseLeft")){
			animation["RaiseShield"].time = animation["RaiseShield"].length;
			animation["RaiseShield"].speed = -1f;
			animation.Play("RaiseShield");
		}
		if (Input.GetButtonDown("UseRight")){
			if (rightWeapon != null){
				if (rightWeapon.lockOrientation){
					lookAtCursor = false;				
				}
			}
		}
		if (Input.GetButton("UseRight")){
			if (rightWeapon != null){
				//rightWeapon.Use();
				animation.Play("Slash1");
			}
		}

		if (Input.GetButtonUp("UseRight")){
			if (rightWeapon != null){
				if (rightWeapon.lockOrientation){
					lookAtCursor = true;				
				}
			}
		}
	}

	void Look(){

//		Debug.Log("Hit Ground");
		Vector3 lookPoint = GameManager.cursorWorldPosition;
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
*/
