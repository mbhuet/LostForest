using UnityEngine;
using System.Collections;

public class SwordImpact : MonoBehaviour, IEffect{

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	}

	public void Run(){
		particleSystem.Emit (10);
		GameObject.Destroy (this.gameObject, particleSystem.startLifetime);
	}


}
