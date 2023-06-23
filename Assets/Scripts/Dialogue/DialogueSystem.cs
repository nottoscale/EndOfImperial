using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;
using System;
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

    public void ShowStory(Story story, string knotName)
    {
        this.story = story;
        if (!string.IsNullOrEmpty(knotName))
        {
            story.ChoosePathString(knotName);
        }
        GameManager.Instance.TogglePlayerCanMove(false);
        StepThroughStory();
    }

    private void StepThroughStory()
    {

        choicesPanel.DestroyAllChildren();
        while (story.canContinue)
        {
            // This removes any white space from the text.
            string text = story.Continue();
            text = text.Trim();
            //Debug.Log($"--{text}");

            ShowText(text);
        }

        if (story.currentChoices.Count > 0)
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
            GameManager.Instance.TogglePlayerCanMove(true);
        }
    }

    // Creates a button showing the choice text
    Button CreateChoiceView(string text)
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
    void OnClickChoiceButton(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        StepThroughStory();
    }
}
