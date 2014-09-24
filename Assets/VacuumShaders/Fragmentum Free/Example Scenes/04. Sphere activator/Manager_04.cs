// VacuumShaders 2014
// https://www.facebook.com/VacuumShaders

using UnityEngine;
using System.Collections;

using VacuumShaders.Fragmentum;

public class Manager_04 : MonoBehaviour 
{
    //////////////////////////////////////////////////////////////////////////////
    //                                                                          // 
    //Variables                                                                 //                
    //                                                                          //               
    //////////////////////////////////////////////////////////////////////////////


    public Transform activator;
    public float radius = 1;

    public FragmentumController[] fragmentumObjects;
    //////////////////////////////////////////////////////////////////////////////
    //                                                                          // 
    //Unity Functions                                                           //                
    //                                                                          //               
    //////////////////////////////////////////////////////////////////////////////
	// Use this for initialization
	void Start () 
    {
        //Find all Fragmentums
	    fragmentumObjects = FindObjectsOfType<FragmentumController>();
	}
	
	// Update is called once per frame
	void Update () 
    {
        
        Vector4 data = activator.position;
        data.w = radius;

        // V_FR_ActivatorSphereObject - position(xyz), radius(w)
        for (int i = 0; i < fragmentumObjects.Length; i++)
            fragmentumObjects[i].UpdateActivatorSphere(activator.position, radius);

        
	}
}
