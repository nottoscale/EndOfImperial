using System;

public abstract class InkExternalAction
{
    public abstract Func<string, object> GetAction();
}