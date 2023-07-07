// Scenes
INCLUDE 1_CoffeeShopNight.ink

// Variables
VAR SPEAKER_LUZ = "Luz"
VAR SPEAKER_BEN = "Ben"
VAR leftSpeaker = ""
VAR rightSpeaker = ""

Once upon a time...

 * There were two choices.
 -> CoffeeShopNightBen1
 * There were four lines of content.

- They lived happily ever after.
    -> END

// Functions
=== function resetDialogueFaces() ===
~leftSpeaker = ""
~rightSpeaker = ""