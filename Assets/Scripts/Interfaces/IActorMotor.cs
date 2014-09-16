using UnityEngine;
using System.Collections;

public interface IActorMotor {
	void Move(Vector3 moveDir);
	void Look(Vector3 lookDir);

}
