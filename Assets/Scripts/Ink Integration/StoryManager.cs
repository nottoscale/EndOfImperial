using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StoryManager : SingletonMonoBehaviour<StoryManager>
{
    [SerializeField]
    private InkLoader inkLoader;

    public Story GetStory()
    {
        return inkLoader.story;
    }

    // get a newly created story (basically resets to beginning)
    public Story GetStoryFromStart()
    {
        return inkLoader.InitStory();
    }
}
