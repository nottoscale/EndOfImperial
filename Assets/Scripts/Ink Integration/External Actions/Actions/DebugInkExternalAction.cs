using System;
using UnityEngine;

public class DebugInkExternalAction : InkExternalAction
{
    public override Func<string, object> GetAction()
    {
        return (string message) => { Debug.Log(message); return null; };
    }
}