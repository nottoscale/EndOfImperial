using Ink.Runtime;
using System;
using System.Collections.Generic;

public static class InkExternalActionManager
{
    private static Dictionary<InkExternalActionType, InkExternalAction> _inkActions = new Dictionary<InkExternalActionType, InkExternalAction>();

    static InkExternalActionManager()
    {
        // NOTE: these actions get registered after the first call to InkExternalActionManager
        RegisterInkAction(InkExternalActionType.Debug, new DebugInkExternalAction());
        RegisterInkAction(InkExternalActionType.ChangeScene, new SceneChangeInkExternalAction());
        RegisterInkAction(InkExternalActionType.PresentEvidence, new PresentEvidenceExternalAction());
    }

    public static void RegisterInkAction(InkExternalActionType type, InkExternalAction action)
    {
        _inkActions[type] = action;
    }

    public static void BindActionsToStory(ref Story story, InkExternalActionType actionType)
    {
        story.BindExternalFunction(actionType.GetDescription(), _inkActions[actionType].GetAction());
    }
}