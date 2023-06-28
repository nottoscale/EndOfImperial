using UnityEngine;
using UnityEngine.Events;

public class IntInkVariableObserver : BaseInkVariableObserver
{
    [SerializeField]
    private UnityEvent<int> OnValueChanged;

    protected override void HandleValueChanged(string varName, object newValue)
    {
        if (newValue is int intValue)
        {
            OnValueChanged?.Invoke(intValue);
        }
    }
}
