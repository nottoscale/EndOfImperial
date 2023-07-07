using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "DialogeFace", menuName = "Config/DialogueFace", order = 0)]
public class DialogueFaces : ScriptableObject
{
    [SerializeField]
    private string _characterName;
    public string characterName { get => _characterName; }
    [SerializeField]
    private Sprite _characterFaceSprite;
    public Sprite characterFaceSprite { get => _characterFaceSprite; }
}
