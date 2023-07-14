using System;

public class CloseReadInventoryItemExternalAction : ReceiveInventoryItemExternalActionBase
{
    public override Func<string, object> GetAction()
    {
        return (string itemNameAndContinueKnot) =>
        {
            ParseParameters(itemNameAndContinueKnot, out string itemName, out string continueKnot);
            GameManager.Instance.inventory.INK_ReceiveInventoryItem(itemName, continueKnot, true);
            return null;
        };
    }
}
