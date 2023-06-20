using UnityEngine;
using Ink.Runtime;
using System.Linq;

public abstract class InkLoader : MonoBehaviour
{
    // needs to be public so that InkExeternalActionManager can handle the bindings.
    // you could use "Factory" pattern to make this safer probably
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
        story = new Story(inkJSONAsset.text);

        InkExternalActionType[] uniqueExternalActions = usableExternalActions.Distinct().ToArray();
        foreach (InkExternalActionType externalAction in uniqueExternalActions)
        {
            InkExternalActionManager.BindActionToStory(ref story, externalAction);
        }
    }
}
