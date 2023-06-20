using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestInteractable : MonoBehaviour, Interactable
{
    public void DoInteraction()
    {
        Debug.Log($"{gameObject.name} interaction was executed");
    }
}
