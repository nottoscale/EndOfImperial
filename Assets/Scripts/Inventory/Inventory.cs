using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{
    [SerializeField]
    private GameObject inventoryButton;
    [SerializeField]
    private GameObject inventoryContainer;

    public void BTN_ToggleInventory(bool status)
    {
        inventoryButton.SetActive(!status);
        inventoryContainer.SetActive(status);
        GameManager.Instance.TogglePlayerLocked(status);
    }
}
