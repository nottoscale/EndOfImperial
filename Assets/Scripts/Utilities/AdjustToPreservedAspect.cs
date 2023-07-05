using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(RectTransform))]
public class AdjustToPreservedAspect : MonoBehaviour
{
    private RectTransform rectTransform;
    private Image image;
    private Vector2 lastScreenSize;

    void Awake()
    {
        rectTransform = GetComponent<RectTransform>();
        image = GetComponent<Image>();
        lastScreenSize = new Vector2(Screen.width, Screen.height);
        UpdateSize();
    }

    void Update()
    {
        // Check if screen size has changed
        if (lastScreenSize.x != Screen.width || lastScreenSize.y != Screen.height)
        {
            lastScreenSize = new Vector2(Screen.width, Screen.height);
            UpdateSize();
        }
    }

    void UpdateSize()
    {
        if (image.sprite == null) return;

        var imageAspect = image.sprite.rect.width / image.sprite.rect.height;

        if (imageAspect > 1f) // Image is wider than tall
        {
            // Height should be fully used, width adjusted according to aspect ratio
            var width = rectTransform.rect.height * imageAspect;
            rectTransform.sizeDelta = new Vector2(width, rectTransform.rect.height);
        }
        else // Image is taller than wide or square
        {
            // Width should be fully used, height adjusted according to aspect ratio
            var height = rectTransform.rect.width / imageAspect;
            rectTransform.sizeDelta = new Vector2(rectTransform.rect.width, height);
        }
    }
}
