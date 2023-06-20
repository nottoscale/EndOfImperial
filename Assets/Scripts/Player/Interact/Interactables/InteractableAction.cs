using UnityEngine;
using UnityEngine.Events;

public class InteractableAction : MonoBehaviour, Interactable
{
    [SerializeField]
    private UnityEvent callbackEvents;

    public void DoInteraction()
    {
        if(callbackEvents == null)
        {
            Debug.LogError($"{gameObject.name} interactable doesn't have any assigned actions/events to it for when interacted with.");
            return;
        }
        callbackEvents.Invoke();
    }
}
