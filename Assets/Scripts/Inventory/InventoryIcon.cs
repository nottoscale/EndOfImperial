using UnityEngine;

public class InventoryIcon : MonoBehaviour
{
    [SerializeField]
    private InventoryContent content;

    public void BTN_ShowInventoryContent()
    {
        if(content == null)
        {
            Debug.LogWarning($"There is no content for inventory icon {gameObject.name}");
            return;
        }

        content.BTN_ToggleContent(true);
        GameManager.Instance.inventory.RegisterSubMenu(content);
    }
}
