using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using UnityEngine;

// Description is what we use in the ink files to call this function
public enum InkExternalActionType
{
    [Description("debug")]
    Debug,
    [Description("changeScene")]
    ChangeScene,
    [Description("presentEvidence")]
    PresentEvidence,
    [Description("correctEvidence")]
    CorrectEvidence,
    [Description("receiveInventoryItem")]
    ReceiveInventoryItem,
    [Description("closeReadInventoryItem")]
    CloseReadInventoryItem,
    [Description("showPrompt")]
    ShowPrompt,
    [Description("hidePrompt")]
    HidePrompt,
}
