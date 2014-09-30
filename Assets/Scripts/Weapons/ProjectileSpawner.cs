using UnityEngine;
using System.Collections;

public class ProjectileSpawner : HandWeapon {
	public ProjectileWeapon projectile;

	public override void BeginUse(int hand){
		ProjectileWeapon proj = (ProjectileWeapon)GameObject.Instantiate(projectile, this.transform.position, this.transform.rotation) as ProjectileWeapon;
		proj.owner = this.owner;
		proj.Launch (this.transform.forward);
	}
	public override void HoldUse(int hand){

	}
	public override void EndUse(int hand){

	}
}
