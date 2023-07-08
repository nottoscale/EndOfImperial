using System;

public class CorrectEvidenceExternalAction : InkExternalAction
{
    public override Func<string, object> GetAction()
    {
        return (string noParam) =>
        {
            GameManager.Instance.inventory.INK_EvidenceComplete();
            return null;
        };
    }
}
