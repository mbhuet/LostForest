using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;


public class InventorySlot : ItemSlot {

	#region IDropHandler implementation
	public override void OnDrop (PointerEventData eventData)
	{
		if (!item) {
			item = DragHandler.itemBeingDragged;
		}
	}
	#endregion
}
