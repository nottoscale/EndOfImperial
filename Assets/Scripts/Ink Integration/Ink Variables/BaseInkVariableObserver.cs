using UnityEngine;
using UnityEngine.Events;
using Ink.Runtime;

public abstract class BaseInkVariableObserver<T> : MonoBehaviour
{
    [SerializeField] 
    protected string variableName;
    [SerializeField]
    private bool debugMode = false;
    [SerializeField]
    private UnityEvent<T> OnStart;
    [SerializeField]
    private UnityEvent<T> OnValueChanged;

    protected Story story;

    private void Start()
    {
        story = StoryManager.Instance.GetStory();
        story.ObserveVariable(variableName, HandleValueChanged);

        HandleStart(story.variablesState[variableName]);
    }

    protected void HandleStart(object varValue)
    {
        if (debugMode)
        {
            Debug.Log($"{variableName} started at {varValue}");
        }

        if (varValue is T intValue)
        {
            OnStart?.Invoke(intValue);
        }
    }

    protected void HandleValueChanged(string varName, object newValue)
    {
        if (debugMode)
        {
            Debug.Log($"{varName} changed to {newValue}");
        }

        if (newValue is T intValue)
        {
            OnValueChanged?.Invoke(intValue);
        }
    }
}