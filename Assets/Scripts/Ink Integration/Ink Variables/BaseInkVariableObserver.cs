using UnityEngine;
using UnityEngine.Events;
using Ink.Runtime;

public abstract class BaseInkVariableObserver : MonoBehaviour
{
    [SerializeField] 
    protected string variableName;
    [SerializeField]
    private bool debugMode = false;

    protected Story story;

    private void Start()
    {
        story = StoryManager.Instance.GetStory();
        story.ObserveVariable(variableName, DebugValueChanged);
    }

    private void DebugValueChanged(string varName, object newValue)
    {
        if(debugMode)
        {
            Debug.Log($"{varName} changed to {newValue}");
        }
        HandleValueChanged(varName, newValue);
    }

    protected abstract void HandleValueChanged(string varName, object newValue);
}