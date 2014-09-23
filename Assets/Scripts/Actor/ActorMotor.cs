using UnityEngine;
using System.Collections;

public abstract class ActorMotor : MonoBehaviour{
	public enum MotorState {WALKING, STUNNED, ROLLING, FLYING};
	protected MotorState state;
	
	public Vector3 moveDir;
	public float moveSpeed;
	
	public abstract void Move(Vector3 moveDir);
	public abstract void Look(Vector3 lookDir);
	public abstract void Roll();



}
