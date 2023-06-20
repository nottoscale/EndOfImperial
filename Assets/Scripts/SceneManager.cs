using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneManager : SingletonMonoBehaviour<SceneManager>
{
    [SerializeField]
    private GameObject _player;
    public GameObject player { get => _player; }

    public void TogglePlayerCanMove(bool status)
    {
        player.GetComponent<ClickMove>().BTN_ToggleCanMove(status);
    }
}
