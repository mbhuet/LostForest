using UnityEngine;
using System.Collections;

public class Shrink : MonoBehaviour {
	// Use this for initialization
	public float speed;

	void Start () {
		StartCoroutine ("S", speed);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	IEnumerator S(float speed){
		while (this.transform.localScale.x > .01f) {
			this.transform.localScale = this.transform.localScale - Vector3.one * Time.deltaTime * speed;
			yield return null;
		}

		GameObject.Destroy(this.gameObject);
	}
}
