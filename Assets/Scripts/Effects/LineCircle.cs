using UnityEngine;
using System.Collections;

[RequireComponent (typeof(LineRenderer))]
public class LineCircle : MonoBehaviour
{
	public int segments;
	public float radius;
	public float thickness;
	//from 0 to 1
	public float percentage;
	LineRenderer line;


	void Awake(){
		line = gameObject.GetComponent<LineRenderer>();
		
		line.SetVertexCount (segments + 1);
		line.useWorldSpace = false;
		line.SetWidth (thickness, thickness);

	}

	void Start ()
	{
		UpdatePoints ();
	}
	
	
	public void UpdatePoints ()
	{
		float begin = 	(360f * (1 - percentage)) / 2f;
		float end = 	360f - (360f * (1 - percentage)) / 2f;

//		Debug.Log (begin + ", " + end);

		float x;
		float y = 0f;
		float z;
		
		float angle = begin;
		
		for (int i = 0; i < (segments + 1); i++)
		{
			x = Mathf.Sin (Mathf.Deg2Rad * angle) * radius;
			z = Mathf.Cos (Mathf.Deg2Rad * angle) * radius;
			
			line.SetPosition (i,new Vector3(x,y,z) );
			
			angle += (360f / segments);

			if (angle >= end){
				line.SetVertexCount (i+2);

				angle = end;
				x = Mathf.Sin (Mathf.Deg2Rad * angle) * radius;
				z = Mathf.Cos (Mathf.Deg2Rad * angle) * radius;
				
				line.SetPosition (i+1,new Vector3(x,y,z) );

				break;
			}
		}
	}

	public void SetThickness(float newThickness){
		this.thickness = newThickness;
		line.SetWidth (newThickness, newThickness);
		UpdatePoints ();
	}

	public void SetRadius(float newRad){
		radius = newRad;
		UpdatePoints ();
	}
	public void SetPercentage(float newPercent){
		percentage = newPercent;
		UpdatePoints ();
	}
}