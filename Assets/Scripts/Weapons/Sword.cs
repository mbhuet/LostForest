using UnityEngine;
using System.Collections;

public class Sword : HandWeapon {


	MeleeWeaponTrail swipeTrail;
	public string[] combos;
	bool comboFlag;
	bool acceptCombo;
	bool inAttack = false;

	int comboIndex = 0;

	float endComboWindow = .1f;
	float postComboWindow = .1f;

	public GameObject strikeEffect;



	void Awake(){
		swipeTrail = this.GetComponent<MeleeWeaponTrail> ();
	}

	void Update(){

	}
	

	public override void BeginUse(int hand){

		if (!inAttack) {
			StartCoroutine ("Swing", hand);		
		} else if (acceptCombo) {
			comboFlag = true;		
		}

	}
	public override void HoldUse(int hand){
	}
	public override void EndUse(int hand){
	}


	void OnTriggerEnter(Collider other){

		if (active && !blocked){
			if (other.GetComponent<Health>() && other.gameObject != this.owner.gameObject){

				//SPECIAL EFFECT
				SpecialEffect actEffect = (SpecialEffect)GameObject.Instantiate (actorImpact, other.bounds.center, Quaternion.identity) as SpecialEffect;
				actEffect.Run(1);
				actEffect.transform.parent = other.transform;

				//*****************************


				Vector3 forceDir = (other.transform.position - owner.transform.position).normalized;
				forceDir.y = 0;
				other.GetComponent<Health>().Damage(damage, forceDir * force);
			}
		}
	}

	void QueueAttack (string attack){
		
	}
	
	IEnumerator Swing (int hand){
		inAttack = true;
		comboIndex = -1;

		do {
			blocked = false;
			comboFlag = false;
			acceptCombo = false;
			swipeTrail.Emit = true;
			this.active = true;

			comboIndex ++;
			if (comboIndex > combos.Length-1) comboIndex = 0;


			bool play = owner.animation.Play(combos[comboIndex]);
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
		owner.animation.Blend (hand + "_Idle");
	}


		


		
	

}
