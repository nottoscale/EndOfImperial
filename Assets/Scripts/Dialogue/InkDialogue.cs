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
        ShowDialogue(knotName);
    }

    public void ShowDialogue(string knot)
    {
        if (string.IsNullOrEmpty(knot))
        {
            Debug.LogWarning($"No knot was given for {gameObject.name}");
        }
        knotName = knot;
        DialogueSystem.Instance.ShowStory(knotName);
    }
}
