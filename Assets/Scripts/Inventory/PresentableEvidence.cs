using Ink.Runtime;
using UnityEngine;

public class PresentableEvidence : InkDialogue
{
    [SerializeField]
    private string evidenceName;

    public void BTN_PresentEvidence()
    {
        if(string.IsNullOrEmpty(evidenceName))
        {
            Debug.LogError($"Evidence for {gameObject.name} does not have an assigned evidence name");
            return;
        }

        SetInkPresentedEvidence();
        ShowDialogue();
    }

    private void SetInkPresentedEvidence()
    {
        Story thisStory = StoryManager.Instance.GetStory();
        thisStory.variablesState[ConfigConstants.PRESENTED_EVIDENCE] = evidenceName;
    }
}
