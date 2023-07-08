using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryContent : MonoBehaviour
{
    [SerializeField]
    private ClickOffUIElement clickOffUIElement;

    public void BTN_ToggleContent(bool status)
    {
        gameObject.SetActive(status);

        if (clickOffUIElement.graphicRaycaster == null && status == true)
        {
            Debug.Log(GameManager.Instance.inventory.clickOffDetector);
            clickOffUIElement.graphicRaycaster = GameManager.Instance.inventory.clickOffDetector.graphicRaycaster;
        }
    }

    public void BTN_Back()
    {
        GameManager.Instance.inventory.BTN_BackButton();
    }

    public void ToggleClickOffUI(bool status)
    {
        clickOffUIElement.enabled = status;
    }
}
