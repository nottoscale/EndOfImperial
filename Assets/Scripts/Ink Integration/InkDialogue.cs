using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InkDialogue : MonoBehaviour
{
    [SerializeField]
    private string knotName = null;

    public void ShowDialogue()
    {
        DialogueSystem.Instance.ShowStory(StoryManager.Instance.GetStory(), knotName);
    }
}
