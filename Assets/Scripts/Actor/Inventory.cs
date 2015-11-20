using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Inventory : MonoBehaviour {
	List<Item> items;
	public List<Item> startingItems;


	
	public void AddItem (Item i) {
		items.Add (i);	
	}

	public void Start(){
		items = startingItems;
	}


}
