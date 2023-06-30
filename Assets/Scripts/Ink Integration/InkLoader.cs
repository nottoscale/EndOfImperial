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
}
