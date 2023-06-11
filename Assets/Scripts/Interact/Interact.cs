using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interact : MonoBehaviour
{
    [SerializeField, Tooltip("Layers on which we expect to find clickable interactables.")]
    private LayerMask clickLayers;

    private void Update()
    {
        if (Input.GetButtonDown("Fire1"))
        {
            // Create a ray from the camera going through the mouse position on the screen
            RaycastHit2D hit = Physics2D.Raycast(Camera.main.ScreenToWorldPoint(Input.mousePosition), Vector2.zero, Mathf.Infinity, clickLayers);

            if (hit.transform != null)
            {
                // If something was hit, the RaycastHit2D.collider will not be null.
                Debug.Log($"{hit.collider.gameObject.name} was clicked");

                // check if the thing hit has an interactable object
                Interactable interactable = hit.collider.GetComponent<Interactable>();
                
                if(interactable != null)
                {
                    interactable.DoInteraction();
                }
            }
        }
    }
}
