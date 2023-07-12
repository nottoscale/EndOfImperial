using System;

public abstract class ReceiveInventoryItemExternalActionBase : InkExternalAction
{
    protected void ParseParameters(string paramsFromInk, out string evidenceName, out string continueKnot)
    {
        string[] paramsSplit = paramsFromInk.Split(ConfigConstants.INK_RECEIVE_PARAMS_DELIMITER);

        evidenceName = paramsSplit[0];
        continueKnot = paramsSplit[1];
    }
}
