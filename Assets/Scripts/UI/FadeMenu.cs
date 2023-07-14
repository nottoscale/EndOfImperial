using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class FadeMenu : MonoBehaviour
{
    [SerializeField]
    private CanvasGroup fadeMenuGroup;
    [SerializeField]
    private float fadeTime;

    public void ToggleMenu(bool status)
    {
        if(status)
        {
            gameObject.SetActive(true);
            fadeMenuGroup.DOFade(1f, fadeTime);
        }
        else
        {
            fadeMenuGroup.DOFade(0f, fadeTime).OnComplete(() => gameObject.SetActive(false));
        }
    }
}
