using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StoryManager : SingletonMonoBehaviour<StoryManager>
{
    [SerializeField]
    private InkLoader inkLoader;
    [SerializeField]
    private bool _saveStory = false;
    public bool shouldSave { get => _saveStory; }

    public Story GetStory()
    {
        return inkLoader.story;
    }

    public void SaveStory()
    {
        inkLoader.SaveStory();
    }

    public void BTN_ResetStorySave()
    {
        inkLoader.BTN_ResetStorySave();
    }
}
