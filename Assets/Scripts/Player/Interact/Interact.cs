using UnityEngine;

public class Interact : MonoBehaviour
{
    [SerializeField, Tooltip("Layers on which we expect to find clickable interactables.")]
    private LayerMask clickLayers;
    [SerializeField]
    private bool debug = false;

    private bool canInteract = true;

    private void Update()
    {
        if (canInteract && Input.GetButtonDown("Fire1"))
        {
            // Create a ray from the camera going through the mouse position on the screen
            RaycastHit2D hit = Physics2D.Raycast(Camera.main.ScreenToWorldPoint(Input.mousePosition), Vector2.zero, Mathf.Infinity, clickLayers);

            if (hit.transform != null)
            {
                // If something was hit, the RaycastHit2D.collider will not be null.
                if (debug)
                {
                    Debug.Log($"{hit.collider.gameObject.name} was clicked");
                }

                // check if the thing hit has an interactable object
                Interactable interactable = hit.collider.GetComponent<Interactable>();
                
                if(interactable != null)
                {
                    interactable.DoInteraction();
                }
            }
        }
    }

    public void ToggleCanInteract(bool status)
    {
        if(debug)
        {
            Debug.Log($"Interact status set to {status}");
        }
        canInteract = status;
    }
}
