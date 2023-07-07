using UnityEngine;
using TMPro;
using Ink.Runtime;
using UnityEngine.UI;

public class DialogueSystem : SingletonMonoBehaviour<DialogueSystem>
{
    [SerializeField]
    private TMP_Text dialogueText;
    [SerializeField]
    private GameObject dialogueBox;
    [SerializeField]
    private Transform choicesPanel;
    [SerializeField]
    private GameObject choiceButtonPrefab;
    [SerializeField]
    private GameObject continueButton;

    private Story story;

    public void ShowText(string text)
    {
        dialogueBox.SetActive(true);
        dialogueText.text = text;
    }

    public void HideText()
    {
        dialogueBox.SetActive(false);
        dialogueText.text = "";
    }

    public void ShowStory(string knotName)
    {
        story = StoryManager.Instance.GetStory();
        if (!string.IsNullOrEmpty(knotName))
        {
            story.ChoosePathString(knotName);
        }
        GameManager.Instance.TogglePlayerLocked(true);
        Save();
        StepThroughStory();
    }

    private void ResetChoices()
    {
        choicesPanel.DestroyAllChildren();
        continueButton.SetActive(false);
    }

    private void StepThroughStory()
    {
        ResetChoices();

        while (story.canContinue)
        {
            string text = story.Continue();
            text = text.Trim();
            //Debug.Log($"--{text}");

            text = ProcessSpeakerHeads(text);

            ShowText(text);
        }

        if(story.currentChoices.Count == 1)
        {
            // the special continue case where we only want to 
            // advance the dialogue
            Choice choice = story.currentChoices[0];
            string text = choice.text.Trim();
            if (text == Constants.INK_CONTINUE_TAG)
            {
                continueButton.SetActive(true);
            }
        }
        else if (story.currentChoices.Count > 0)
        {
            for (int i = 0; i < story.currentChoices.Count; i++)
            {
                Choice choice = story.currentChoices[i];
                Button button = CreateChoiceView(choice.text.Trim());
                // Tell the button what to do when we press it
                button.onClick.AddListener(delegate {
                    OnClickChoiceButton(choice);
                });
            }
        }
        else
        {
            // If we've read all the content and there's no choices, the story is finished!
            HideText();
            GameManager.Instance.TogglePlayerLocked(false);
            Save();
        }
    }

    private string ProcessSpeakerHeads(string text)
    {
        if(!text.Contains(Constants.INK_DIALOGUE_SPEAKER_TAG))
        {
            return text;
        }

        string[] splitText = text.Split(Constants.INK_DIALOGUE_SPEAKER_TAG, 2);

        Debug.Log(splitText[0]);

        return splitText[1];
    }

    private void Save()
    {
        if (StoryManager.Instance.shouldSave)
        {
            StoryManager.Instance.SaveStory();
        }
    }

    // Creates a button showing the choice text
    private Button CreateChoiceView(string text)
    {
        // Creates the button from a prefab
        GameObject choiceObj = Instantiate(choiceButtonPrefab, choicesPanel);
        Button choice = choiceObj.GetComponent<Button>();

        // Gets the text from the button prefab
        TMP_Text choiceText = choice.GetComponentInChildren<TMP_Text>();
        choiceText.text = text;

        return choice;
    }

    // When we click the choice button, tell the story to choose that choice!
    private void OnClickChoiceButton(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        StepThroughStory();
    }

    public void BTN_Continue()
    {
        story.ChooseChoiceIndex(0);
        StepThroughStory();
    }
}
