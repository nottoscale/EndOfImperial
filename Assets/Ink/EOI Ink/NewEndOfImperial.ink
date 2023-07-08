// Scenes
INCLUDE 1_CoffeeShopNight.ink
INCLUDE 2_CrashScene.ink
INCLUDE 3_HospitalScene.ink
INCLUDE 4_CoronerAutopsyScene.ink

// Constants
VAR SPEAKER_LUZ = "Luz"
VAR SPEAKER_BEN = "Ben"
VAR SPEAKER_OFFICER = "Officer"
VAR SPEAKER_DOCTORROSS = "DoctorRoss"
VAR SPEAKER_MEDICALINVESTIGATOR = "MedicalInvestigator"
VAR SPEAKER_CORONER = "Coroner"

// Variables
VAR leftSpeaker = ""
VAR rightSpeaker = ""
VAR submittedEvidence = ""

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

EXTERNAL debug(message)
EXTERNAL changeScene(message)
EXTERNAL presentEvidence(message)