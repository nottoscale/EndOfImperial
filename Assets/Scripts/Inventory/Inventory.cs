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
    [SerializeField]
    private InventoryContent[] allContent;

    public ClickOffUIElement clickOffDetector { get => _clickOffDetector; }
    [SerializeField]
    private InkDialogue inkDialogueForSubmitting;

    public bool isPresenting { get; private set; } = false;
    public bool isReceivingItem { get; private set; } = false;

    private bool isQuiz = false;
    private string submitKnot; // for submitting evidence
    private string continueKnot; // for continueing after receiving item
    private List<InventoryContent> subMenus = new();
    private Dictionary<string, InventoryContent> allContentMap = new();
    private InventoryContent receivedItem;

    private void Start()
    {
        foreach(InventoryContent content in allContent)
        {
            allContentMap.Add(content.inventoryItem.GetDescription(), content);
        }
    }

    public void BTN_ToggleInventory(bool status)
    {
        inventoryButton.SetActive(!status);
        inventoryContainer.SetActive(status);
        GameManager.Instance.TogglePlayerLocked(status);
    }

    public void RegisterSubMenu(InventoryContent subMenu)
    {
        clickOffDetector.enabled = false;
        foreach (InventoryContent menu in subMenus)
        {
            menu.ToggleClickOffUI(false);
        }
        subMenus.Add(subMenu);
        subMenu.ToggleClickOffUI(true);
    }

    public void BTN_BackButton()
    {
        // don't do anything if they are working through dialogue or quiz right now
        if (DialogueSystem.Instance.isTalking)
        {
            return;
        }

        if (isReceivingItem)
        {
            if (isQuiz)
            {
                return;
            }

            isReceivingItem = false;
            isQuiz = false;
            ToggleInventoryForReceiveItem(false);
            return;
        }

        if (subMenus.Count <= 0)
        {
            BTN_ToggleInventory(false);
            return;
        }

        InventoryContent latestMenu = subMenus[subMenus.Count - 1];
        latestMenu.BTN_ToggleContent(false);
        subMenus.RemoveAt(subMenus.Count - 1);

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

    public void INK_ReceiveInventoryItem(string itemName, string continueKnotName, bool isQuiz)
    {
        if(!allContentMap.ContainsKey(itemName))
        {
            Debug.LogError($"Could not find inventory content with name {itemName}. Did you add it to \"allContent\" in the Inventory Component? ");
            return;
        }
        this.isQuiz = isQuiz;
        continueKnot = continueKnotName;
        receivedItem = allContentMap[itemName];
        ToggleInventoryForReceiveItem(true);
    }

    private void ToggleInventoryForReceiveItem(bool status)
    {
        BTN_ToggleInventory(status);
        receivedItem.gameObject.SetActive(status);
        isReceivingItem = status;

        if (!status)
        {
            isQuiz = false;

            if (string.IsNullOrEmpty(continueKnot))
            {
                Debug.LogError($"continueKnot is empty when trying to present evidence. Check if you are setting it from external action.");
            }
            inkDialogueForSubmitting.ShowDialogue(continueKnot);
        }
    }

    public void BTN_CompleteQuiz()
    {
        isQuiz = false;
    }
}
