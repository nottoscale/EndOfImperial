using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(StoryManager))]
public class ResetSaveButton : Editor
{
    public override void OnInspectorGUI()
    {
        DrawDefaultInspector(); 

        StoryManager storyManager = (StoryManager)target;
        if (GUILayout.Button("Delete Save"))
        {
            storyManager.BTN_ResetStorySave();
        }
    }
}
