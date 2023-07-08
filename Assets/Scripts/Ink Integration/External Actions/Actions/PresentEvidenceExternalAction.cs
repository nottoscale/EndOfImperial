using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PresentEvidenceExternalAction : InkExternalAction
{
    public override Func<string, object> GetAction()
    {
        return (string submitKnotName) =>
        {
            GameManager.Instance.inventory.INK_PresentEvidence(submitKnotName);
            return null;
        };
    }
}
