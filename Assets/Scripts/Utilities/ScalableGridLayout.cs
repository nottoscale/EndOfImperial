using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScalableGridLayout : GridLayoutGroup
{
    private Vector2 lastScreenSize;

    protected override void Start()
    {
        base.Start();
        lastScreenSize = new Vector2(Screen.width, Screen.height);
    }

    void Update()
    {
        // Check if screen size has changed
        if (lastScreenSize.x != Screen.width || lastScreenSize.y != Screen.height)
        {
            lastScreenSize = new Vector2(Screen.width, Screen.height);
            UpdateCellSizes();
        }
    }

    private void UpdateCellSizes()
    {
        float width = gameObject.GetComponent<RectTransform>().rect.width - spacing.x;
        Vector2 newSize = new(width / constraintCount, width / constraintCount);
        cellSize = newSize;
    }

    
}
