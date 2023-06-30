using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneChangeInkExternalAction : InkExternalAction
{
    public override Func<string, object> GetAction()
    {
        return (string sceneName) =>
        {
            GameManager.Instance.ChangeScene(sceneName);
            return null;
        };
    }
}
