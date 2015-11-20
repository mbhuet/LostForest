using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public abstract class ItemSlot : MonoBehaviour, IDropHandler {
	public Item item;


	#region IDropHandler implementation
	public virtual void OnDrop (PointerEventData eventData)
	{
		throw new System.NotImplementedException ();
	}
	#endregion
}
