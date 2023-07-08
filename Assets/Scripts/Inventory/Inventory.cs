using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{
    [SerializeField]
    private GameObject inventoryButton;
    [SerializeField]
    private GameObject inventoryContainer;
    [SerializeField]
    private ClickOffUIElement _clickOffDetector;

    public ClickOffUIElement clickOffDetector { get => _clickOffDetector; }
    [SerializeField]
    private InkDialogue inkDialogueForSubmitting;

    public bool isPresenting { get; private set; } = false;

    private string submitKnot;
    private List<InventoryContent> subMenus = new();

    public void BTN_ToggleInventory(bool status)
    {
        inventoryButton.SetActive(!status);
        inventoryContainer.SetActive(status);
        GameManager.Instance.TogglePlayerLocked(status);
        //clickOffDetector.enabled = status;
    }

    public void RegisterSubMenu(InventoryContent subMenu)
    {
        clickOffDetector.enabled = false;
        foreach(InventoryContent menu in subMenus)
        {
            menu.ToggleClickOffUI(false);
        }
        subMenus.Add(subMenu);
        subMenu.ToggleClickOffUI(true);
    }

    public void BTN_BackButton()
    {
        if (subMenus.Count <= 0)
        {
            BTN_ToggleInventory(false);
            return;
        }

        InventoryContent latestMenu = subMenus[subMenus.Count - 1];
        latestMenu.BTN_ToggleContent(false);
        subMenus.RemoveAt(subMenus.Count - 1);

        Debug.Log(subMenus.Count);
        if (subMenus.Count <= 0)
        {
            clickOffDetector.enabled = true;
        }
        else
        {
            InventoryContent newLatestMenu = subMenus[subMenus.Count - 1];
            newLatestMenu.ToggleClickOffUI(true);
        }
    }

    public void INK_PresentEvidence(string submitKnotName)
    {
        isPresenting = true;
        submitKnot = submitKnotName;
        BTN_ToggleInventory(true);
    }

    public void SubmitEvidence()
    {
        if (string.IsNullOrEmpty(submitKnot))
        {
            Debug.LogError($"SubmitKnot is empty when trying to present evidence. Check if you are setting it from external action.");
        }
        inkDialogueForSubmitting.ShowDialogue(submitKnot);
    }


    public void INK_EvidenceComplete()
    {
        BTN_ToggleInventory(false);
        isPresenting = false;
        submitKnot = "";
    }
}
