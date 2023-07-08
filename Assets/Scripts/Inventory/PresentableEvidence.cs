using Ink.Runtime;
using UnityEngine;

public class PresentableEvidence : MonoBehaviour
{
    [SerializeField]
    private EvidenceType evidenceName;

    public void BTN_PresentEvidence()
    {
        SetInkPresentedEvidence();
        GameManager.Instance.inventory.SubmitEvidence();

    }

    private void SetInkPresentedEvidence()
    {
        Story thisStory = StoryManager.Instance.GetStory();
        thisStory.variablesState[ConfigConstants.SUBMITTED_EVIDENCE] = evidenceName.GetDescription();
    }
}
