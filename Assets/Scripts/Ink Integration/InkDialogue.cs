using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InkDialogue : InkLoader
{
    public void ShowDialogue()
    {
        DialogueSystem.Instance.ShowStory(story, knotName);
    }
}
