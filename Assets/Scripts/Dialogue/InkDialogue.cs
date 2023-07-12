using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class InkDialogue : MonoBehaviour
{
    [SerializeField]
    private string _knotName = null;
    public string knotName { get => _knotName; private set => _knotName = value; }
    [SerializeField]
    private UnityEvent onDialogueEnd;

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
        DialogueSystem.Instance.ShowStory(this);
    }

    public void OnDialogueEnd()
    {
        if (onDialogueEnd == null)
        {
            return;
        }
        onDialogueEnd.Invoke();
    }
}
