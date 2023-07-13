using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryContent : MonoBehaviour
{
    [SerializeField]
    private ClickOffUIElement clickOffUIElement;
    [SerializeField]
    private InventoryItem _inventoryItem;
    public InventoryItem inventoryItem { get => _inventoryItem; }
    [SerializeField]
    private GameObject backButton;

    private void OnEnable()
    {
        if (clickOffUIElement.graphicRaycaster == null)
        {
            clickOffUIElement.graphicRaycaster = GameManager.Instance.inventory.clickOffDetector.graphicRaycaster;
        }
    }

    public void BTN_ToggleContent(bool status)
    {
        gameObject.SetActive(status);
    }

    public void ToggleBackButton(bool status)
    {
        backButton.SetActive(status);
    }

    public void BTN_Back()
    {
        GameManager.Instance.inventory.BTN_BackButton();
    }

    public void ToggleClickOffUI(bool status)
    {
        backButton.SetActive(status);
        clickOffUIElement.enabled = status;
    }
}
