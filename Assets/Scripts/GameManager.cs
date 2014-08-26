using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {
	public static GameManager Instance;
	public static Vector3 cursorWorldPosition;

	// Use this for initialization
	void Start () {
		Instance = this;
	}
	
	// Update is called once per frame
	void Update () {
		UpdateCursor();
	}


	void UpdateCursor(){
		LayerMask mask = 1 << LayerMask.NameToLayer("Ground");
		RaycastHit hit;
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		Physics.Raycast(ray, out hit, 100, mask);

		if (hit.collider != null){
			//			Debug.Log("Hit Ground");
			cursorWorldPosition = hit.point;
		}
	}
}
