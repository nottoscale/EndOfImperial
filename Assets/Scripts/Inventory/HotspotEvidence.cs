using Ink.Runtime;
using UnityEngine;

public class HotspotEvidence : MonoBehaviour
{
    [SerializeField]
    private EvidenceType evidenceName;

    public void BTN_PresentEvidence()
    {
        if(!GameManager.Instance.inventory.isPresenting)
        {
            return;
        }

        SetInkPresentedEvidence();
        GameManager.Instance.inventory.SubmitEvidence();
    }

    private void SetInkPresentedEvidence()
    {
        Story thisStory = StoryManager.Instance.GetStory();
        thisStory.variablesState[ConfigConstants.SUBMITTED_EVIDENCE] = evidenceName.GetDescription();
    }
}
    