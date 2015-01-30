using UnityEngine;
using UnityEditor;
using System.Collections;

[CustomEditor(typeof(MapGeneration))]
public class MapGenerationEditor : Editor {

	private MapGeneration mg;

	void OnEnable(){
		mg = (MapGeneration) target;
	}
	
	public override void OnInspectorGUI(){
		DrawDefaultInspector();
		EditorGUILayout.LabelField(mg.task, mg.progress.ToString());
		this.Repaint();
	}
}
