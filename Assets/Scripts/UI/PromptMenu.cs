using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class PromptMenu : FadeMenu
{
    [SerializeField]
    private TMP_Text promptText;

    public void ShowPrompt(string message)
    {
        promptText.text = message;
        ToggleMenu(true);
    }

    public void HidePrompt()
    {
        ToggleMenu(false);
    }
}
