using UnityEngine;
using System.Collections;

public class Rod : HandWeapon {
	MeleeWeaponTrail swipeTrail;
	bool comboFlag;
	bool acceptCombo;
	bool inAttack = false;
	
	int comboIndex = 0;
	float holdTime = 0;
	bool buttonHeld;
	
	float endComboWindow = .1f;
	float postComboWindow = .1f;
	
	public GameObject strikeEffect;
	public ProjectileWeapon projectile;
	

	void Awake(){
		swipeTrail = this.GetComponent<MeleeWeaponTrail> ();
	}

	
	public override void BeginUse(int hand){
		holdTime = 0;
		buttonHeld = true;
		
		if (!inAttack) {
			StartCoroutine ("Charge", hand);		
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

	
	IEnumerator Charge (int hand){
		inAttack = true;
		do {
			comboFlag = false;
			acceptCombo = false;
			swipeTrail.Emit = true;
			this.active = true;

			
			owner.GetComponent<Animation>().Play("RaiseRod");
			yield return new WaitForSeconds (owner.GetComponent<Animation>()["RaiseRod"].length);

			ProjectileWeapon curProjectile = (ProjectileWeapon)GameObject.Instantiate(projectile, this.GetComponent<Collider>().bounds.center + Vector3.up * (1 + this.GetComponent<Collider>().bounds.extents.y ), Quaternion.identity) as ProjectileWeapon;
			curProjectile.owner = (this.owner);
			while (buttonHeld){
				if (curProjectile.size < curProjectile.maxSize){
					curProjectile.size = Mathf.Lerp(curProjectile.size, curProjectile.maxSize, Time.deltaTime);
					curProjectile.transform.position = this.GetComponent<Collider>().bounds.center + Vector3.up * (curProjectile.GetComponent<Renderer>().bounds.extents.y + this.GetComponent<Collider>().bounds.extents.y );
				}
				yield return null;
			}
			
			acceptCombo = true;
			owner.GetComponent<Animation>().Play("WaveRod");
			curProjectile.Launch(GameManager.Instance.cursorWorldPosition);
			yield return new WaitForSeconds (owner.GetComponent<Animation>()["WaveRod"].length);
			
			swipeTrail.Emit = false;
			this.active = false;
			
			float t = 0;
			while (t < postComboWindow && !comboFlag) {
				t+=Time.deltaTime;
				yield return null;
			}
		} while (comboFlag);
		inAttack = false;
		owner.GetComponent<Animation>().Play (hand + "_Idle");

	}
	
	
	
	
	
	
	
	
}
