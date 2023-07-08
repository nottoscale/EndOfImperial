using UnityEngine;
using UnityEngine.Events;

public class InteractableAction : MonoBehaviour, Interactable
{
    [SerializeField]
    private UnityEvent callbackEvents;
    [SerializeField]
    private bool debug = false;

    public void DoInteraction()
    {
        if (debug)
        {
            Debug.Log($"{gameObject.name} was clicked");
        }
        if(callbackEvents == null)
        {
            Debug.LogError($"{gameObject.name} interactable doesn't have any assigned actions/events to it for when interacted with.");
            return;
        }
        callbackEvents.Invoke();
    }
}
