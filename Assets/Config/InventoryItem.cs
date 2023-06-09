using System.ComponentModel;

public enum InventoryItem 
{
    [Description("InventoryTurnipseedProfile")]
    TurnipseedProfile,
    [Description("InventoryStarkProfile")]
    StarkProfile,
    [Description("InventoryTurnipseedPhone")]
    TurnipseedPhoneRecord,
    [Description("InventoryStarkPhone")]
    StarkPhoneRecord,
    [Description("InventoryAutopsyReport")]
    AutopsyReport,
    [Description("InventoryStarkToxicologyReport")]
    StarkToxicologyReport,
    [Description("InventoryTurnipseedToxicologyReport")]
    TurnipseedToxicologyReport,
    [Description("InventoryStarkCarReport")]
    StarkCarReport,
    [Description("InventoryTurnipseedCarReport")]
    TurnipseedCarReport,
    [Description("Map")]
    Map,
}
