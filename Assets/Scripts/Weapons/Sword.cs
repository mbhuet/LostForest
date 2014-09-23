using UnityEngine;
using System.Collections;

public class Sword : Weapon {
	MeleeWeaponTrail swipeTrail;
	public string[] combos;
	bool comboFlag;
	bool acceptCombo;
	bool inAttack = false;

	int comboIndex = 0;
	float holdTime = 0;
	bool buttonHeld;

	float endComboWindow = .1f;
	float postComboWindow = .1f;

	public GameObject strikeEffect;



	void Awake(){
		swipeTrail = this.GetComponent<MeleeWeaponTrail> ();
	}

	void Start (){
	}
	
	// Update is called once per frame
	void Update () {
	}

	public override void BeginUse(int hand){
		holdTime = 0;
		buttonHeld = true;

		if (!inAttack) {
			StartCoroutine ("Swing", hand);		
		} else if (acceptCombo) {
			comboFlag = true;		
		}

	}
	public override void HoldUse(int hand){
		holdTime += Time.deltaTime;
	}
	public override void EndUse(int hand){
		buttonHeld = false;
	}

	void OnTriggerEnter(Collider col){
		//Debug.Log (col.gameObject.name);
		if (active){
			Actor act = col.gameObject.GetComponent<Actor>();
			if (act != null){
				if (act != this.owner){
					Debug.Log(act.name);
				//SPECIAL EFFECT
				GameObject obj = (GameObject)GameObject.Instantiate(strikeEffect, col.collider.bounds.center, Quaternion.identity) as GameObject;
				IEffect effect = (IEffect) obj.gameObject.GetComponent( typeof(IEffect) );
				effect.Run();
				obj.transform.parent = col.transform;

				//*****************************

				Vector3 forceDir = (act.transform.position - owner.transform.position).normalized;
				act.rigidbody.AddForce(forceDir*100);
				}
			}

		}
	}

	void QueueAttack (string attack){
		
	}
	
	IEnumerator Swing (int hand){
		inAttack = true;
		comboIndex = -1;
		do {
			comboFlag = false;
			acceptCombo = false;
			swipeTrail.Emit = true;
			this.active = true;

			comboIndex ++;
			if (comboIndex > combos.Length-1) comboIndex = 0;


			owner.animation.Play(combos[comboIndex]);
			yield return new WaitForSeconds ((owner.animation [combos [comboIndex]].length - endComboWindow));

			acceptCombo = true;

			yield return new WaitForSeconds (endComboWindow);

			swipeTrail.Emit = false;
			this.active = false;

			float t = 0;
			while (t < postComboWindow && !comboFlag) {
				t+=Time.deltaTime;
				yield return null;
			}
		} while (comboFlag);
		inAttack = false;
		owner.animation.Play ("Idle");




		/*
		this.active = true;
		swipeTrail.Emit = true;
		owner.animation.Play (combos[comboIndex]);
		while (this.active) {
			yield return new WaitForSeconds((owner.animation[combos[comboIndex]].length));
			if (comboFlag){
				comboFlag = false;
				comboIndex ++;
				if (comboIndex>=combos.Length) comboIndex = 0;
				owner.animation.Play (combos[comboIndex]);

			}
			else{
				this.active = false;
				swipeTrail.Emit = false;
			}
		}
		owner.animation.Play ("Idle");
		*/
	}


		


		
	

}
