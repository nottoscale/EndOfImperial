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
        if (string.IsNullOrEmpty(knotName))
        {
            Debug.LogWarning($"No knot was given for {gameObject.name}");
        }
        DialogueSystem.Instance.ShowStory(knotName);
    }
}
