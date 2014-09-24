using UnityEngine;
using System.Collections;

[RequireComponent (typeof(LineRenderer))]
public class LineCircle : MonoBehaviour
{
	public int segments;
	public float radius;
	LineRenderer line;
	
	void Start ()
	{
		line = gameObject.GetComponent<LineRenderer>();
		
		line.SetVertexCount (segments + 1);
		line.useWorldSpace = false;
		UpdatePoints (segments, radius);
	}
	
	
	public void UpdatePoints (int segments, float radius)
	{
		float x;
		float y = 0f;
		float z;
		
		float angle = 20f;
		
		for (int i = 0; i < (segments + 1); i++)
		{
			x = Mathf.Sin (Mathf.Deg2Rad * angle) * radius;
			z = Mathf.Cos (Mathf.Deg2Rad * angle) * radius;
			
			line.SetPosition (i,new Vector3(x,y,z) );
			
			angle += (360f / segments);
		}
	}
}