using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HidePromptInkExternalAction : InkExternalAction
{
    public override Func<string, object> GetAction()
    {
        return (string sceneName) =>
        {
            GameManager.Instance.HidePrompt();
            return null;
        };
    }
}
