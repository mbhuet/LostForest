using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {
	public static GameManager Instance;

	// Use this for initialization
	void Start () {
		Instance = this;
	}
	
	// Update is called once per frame
	void Update () {
	}

	IEnumerator HitTimeSlow(float lowTimeScale){
		Time.timeScale = lowTimeScale;
		int factor = 0;
		while (Time.timeScale < 1) {

			//Time.timeScale = Mathf.Lerp(Time.timeScale, 1, Time.unscaledDeltaTime);
			Time.timeScale += Time.unscaledDeltaTime * factor;
			factor ++;
			yield return null;
		}
		Time.timeScale = 1;
	}


}
