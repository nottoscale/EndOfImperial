using UnityEngine;
using Ink.Runtime;
using System.Linq;

public class InkLoader : MonoBehaviour
{
    public Story story;
   
    [SerializeField]
    private TextAsset inkJSONAsset = null;
    [SerializeField]
    private InkExternalActionType[] usableExternalActions;


    private void Awake()
    {
        LoadInk();
    }

    protected void LoadInk()
    {
        story = InitStory();
        if (StoryManager.Instance.shouldSave)
        {
            LoadSaveFile();
        }

        InkExternalActionType[] uniqueExternalActions = usableExternalActions.Distinct().ToArray();
        foreach (InkExternalActionType externalAction in uniqueExternalActions)
        {
            InkExternalActionManager.BindActionsToStory(ref story, externalAction);
        }
    }

    private void OnStoryError(string message, Ink.ErrorType type)
    {
        Debug.LogError($"Ink Error ({type}): {message}");
    }

    public Story InitStory()
    {
        Story newStory = new Story(inkJSONAsset.text);
        newStory.onError += OnStoryError;
        return newStory;
    }

    public void LoadSaveFile()
    {
        if (PlayerPrefs.HasKey(Constants.SAVE_STATE_KEY))
        {
            var savedState = PlayerPrefs.GetString(Constants.SAVE_STATE_KEY);
            story.state.LoadJson(savedState);
        }
    }

    public void SaveStory()
    {
        string savedState = story.state.ToJson();
        PlayerPrefs.SetString(Constants.SAVE_STATE_KEY, savedState);
    }

    public void BTN_ResetStorySave()
    {
        PlayerPrefs.DeleteKey(Constants.SAVE_STATE_KEY);
        if (story)
        {
            story.ResetState();
        }
    }
}
