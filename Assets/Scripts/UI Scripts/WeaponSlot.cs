using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;


public class WeaponSlot : ItemSlot {
	public int handNo;

	#region IDropHandler implementation
	public override void OnDrop (PointerEventData eventData)
	{
		if (!item && DragHandler.itemBeingDragged is HandWeapon) {
			item = DragHandler.itemBeingDragged;
			GameManager.Instance.player.GetComponent<WeaponManager>().SetWeapon(item.GetComponent<HandWeapon>(), handNo);
		}
	}
	#endregion
}
