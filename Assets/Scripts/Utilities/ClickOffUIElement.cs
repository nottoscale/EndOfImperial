using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using System.Collections.Generic;

public class ClickOffUIElement : MonoBehaviour
{
    [Tooltip("Event to call when the user clicks off of the element.")]
    public UnityEvent onClickOff;

    [Tooltip("Reference to the Graphic Raycaster component.")]
    [SerializeField] private GraphicRaycaster graphicRaycaster;

    private EventSystem eventSystem;

    void Start()
    {
        //Fetch the Event System from the Scene
        eventSystem = EventSystem.current;
    }

    void Update()
    {
        //If the left mouse button is clicked.
        if (Input.GetButtonDown("Fire1"))
        {
            //Set up a new Pointer Event
            PointerEventData pointerEventData = new PointerEventData(eventSystem);
            pointerEventData.position = Input.mousePosition;

            //Create a list of Raycast Results
            List<RaycastResult> results = new List<RaycastResult>();

            //Raycast using the Graphics Raycaster and mouse click position
            graphicRaycaster.Raycast(pointerEventData, results);

            //For every result returned, check if the GameObject hit is this GameObject
            foreach (RaycastResult result in results)
            {
                if (result.gameObject == gameObject)
                {
                    // If we hit this GameObject, then do nothing (return)
                    return;
                }
            }

            //The user clicked off of the GameObject, so call the event.
            onClickOff.Invoke();
        }
    }
}
