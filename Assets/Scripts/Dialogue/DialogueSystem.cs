using UnityEngine;
using TMPro;
using Ink.Runtime;
using UnityEngine.UI;
using System.Collections.Generic;

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
    [SerializeField]
    private DialogueFaces[] dialogueFaces;
    [SerializeField]
    private Color dialogueFaceNonHighlight = Color.gray;
    [SerializeField]
    private Image leftSpeakerImage;
    [SerializeField]
    private Image rightSpeakerImage;
    [SerializeField]
    private GameObject bgOverlay;

    private Story story;

    // map of the character names to the sprites for easy access
    private Dictionary<string, DialogueFaces> dialogueFaceMap = new();

    private DialogueFaces leftSpeaker;
    private DialogueFaces rightSpeaker;

    private void Start()
    {
        foreach(DialogueFaces dialogueFace in dialogueFaces)
        {
            dialogueFaceMap.Add(dialogueFace.characterName, dialogueFace);
        }
    }

    public void ShowText(string text)
    {
        dialogueBox.SetActive(true);
        dialogueText.text = text;
        bgOverlay.SetActive(true);
    }

    public void Hide()
    {
        dialogueBox.SetActive(false);
        dialogueText.text = "";
        leftSpeakerImage.gameObject.SetActive(false);
        rightSpeakerImage.gameObject.SetActive(false);
        bgOverlay.SetActive(false);
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

    private void SetupDialogueFaces(Story story)
    {
        string leftSpeakerName = (string)story.variablesState[ConfigConstants.LEFT_SPEAKER_VAR];
        string rightSpeakerName = (string)story.variablesState[ConfigConstants.RIGHT_SPEAKER_VAR];
        ResetFaceHightlights();
        leftSpeaker = SetupDialogueFace(leftSpeakerName, leftSpeakerImage);
        rightSpeaker = SetupDialogueFace(rightSpeakerName, rightSpeakerImage);
    }

    private DialogueFaces SetupDialogueFace(string speakerName, Image speakerImage)
    {
        if(!dialogueFaceMap.ContainsKey(speakerName))
        {
            return null;
        }

        DialogueFaces characterFace = dialogueFaceMap[speakerName];
        speakerImage.sprite = characterFace.characterFaceSprite;
        speakerImage.gameObject.SetActive(true);

        return characterFace;
    }

    private void ResetChoices()
    {
        choicesPanel.DestroyAllChildren();
        continueButton.SetActive(false);
    }

    private void HightlightFace(Image hightlightImage)
    {
        hightlightImage.color = Color.white;
    }

    private void ResetFaceHightlights()
    {
        leftSpeakerImage.color = dialogueFaceNonHighlight;
        rightSpeakerImage.color = dialogueFaceNonHighlight;
    }

    private void StepThroughStory()
    {
        ResetChoices();

        while (story.canContinue)
        {
            string text = story.Continue();
            text = text.Trim();
            SetupDialogueFaces(story);
            //Debug.Log($"--{text}");

            text = ProcessDialogueFaces(text);

            ShowText(text);
        }

        if(story.currentChoices.Count == 1)
        {
            // the special continue case where we only want to 
            // advance the dialogue
            Choice choice = story.currentChoices[0];
            string text = choice.text.Trim();
            if (text == ConfigConstants.INK_CONTINUE_TAG)
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
            Hide();
            GameManager.Instance.TogglePlayerLocked(false);
            Save();
        }
    }

    private string ProcessDialogueFaces(string text)
    {
        if(!text.Contains(ConfigConstants.INK_DIALOGUE_SPEAKER_TAG))
        {
            return text;
        }

        string[] splitText = text.Split(ConfigConstants.INK_DIALOGUE_SPEAKER_TAG, 2);

        string speakerName = splitText[0];

        if (leftSpeaker != null && speakerName == leftSpeaker.characterName)
        {
            HightlightFace(leftSpeakerImage);
        } else if(rightSpeaker != null && speakerName == rightSpeaker.characterName)
        {
            HightlightFace(rightSpeakerImage);
        }
        string spokenText = splitText[1];

        return spokenText;
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
