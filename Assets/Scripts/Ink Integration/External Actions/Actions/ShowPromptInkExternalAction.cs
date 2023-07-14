using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShowPromptInkExternalAction : InkExternalAction
{
    public override Func<string, object> GetAction()
    {
        return (string message) =>
        {
            GameManager.Instance.ShowPrompt(message);
            return null;
        };
    }
}
