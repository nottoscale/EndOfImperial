using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : SingletonMonoBehaviour<GameManager>
{
    [SerializeField]
    private GameObject _player;
    public GameObject player { get => _player; }

    public void TogglePlayerCanMove(bool status)
    {
        player.GetComponent<ClickMove>().BTN_ToggleCanMove(status);
    }

    public void TogglePlayerCanInteract(bool status)
    {
        player.GetComponent<Interact>().ToggleCanInteract(status);
    }

    public void TogglePlayerLocked(bool status)
    {
        TogglePlayerCanMove(!status);
        TogglePlayerCanInteract(!status);
    }

    public void ChangeScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }
}
