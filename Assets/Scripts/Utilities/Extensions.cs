using System;
using System.ComponentModel;
using UnityEngine;

public static class Extensions
{
    #region Transform
    public static void DestroyAllChildren(this Transform transform)
    {
        foreach (Transform child in transform)
        {
            GameObject.Destroy(child.gameObject);
        }
    }
    #endregion

    #region enum
    public static string GetDescription<T>(this T enumValue) where T : struct, IConvertible
    {
        if (!typeof(T).IsEnum)
            throw new ArgumentException("T must be an enumerated type");

        var description = enumValue.ToString();
        var fieldInfo = enumValue.GetType().GetField(description);
        var attributes = (DescriptionAttribute[])fieldInfo.GetCustomAttributes(typeof(DescriptionAttribute), false);

        if (attributes.Length > 0)
        {
            description = attributes[0].Description;
        }

        return description;
    }
    #endregion
}
