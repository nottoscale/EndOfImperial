using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class InkExternalActionManager 
{
    public static void BindActionToStory(ref Story story, InkExternalActionType actionType)
    {
        // Todo: Is there a less monolithic way to handle this
        // where the parameters could be anything?
        switch(actionType)
        {
            case InkExternalActionType.Debug:
                DebugActionBind(ref story);
                break;
            default:
                Debug.LogWarning($"Could not find ink external action of type {actionType}");
                break;
        }
    }

    public static void DebugActionBind(ref Story story)
    {
        story.BindExternalFunction(InkExternalActionType.Debug.GetDescription(), (string message) => {
            Debug.Log(message);
        });
    }
}
