EXTERNAL debug(message)
EXTERNAL changeScene(message)
EXTERNAL presentEvidence(submitKnotName)
EXTERNAL correctEvidence(noParam)

// Scenes
INCLUDE 1_CoffeeShopNight.ink
INCLUDE 2_CrashScene.ink
INCLUDE 3_HospitalScene.ink
INCLUDE 4_CoronerAutopsyScene.ink
INCLUDE 5_HospitalScene.ink
INCLUDE 6_TurnipseedPatientRoomScene.ink
INCLUDE 7_DAOfficeScene.ink
INCLUDE 8_DayCoffeeShopScene.ink
INCLUDE 9_MovieSetScene.ink
INCLUDE 10_CoronerScene.ink
INCLUDE 11_DayCrashScene.ink
INCLUDE 12_PoliceStationScene.ink
INCLUDE 13_DAOfficeScene.ink
INCLUDE 14_TurnipseedPatientRoomScene.ink

// Constants
VAR SPEAKER_LUZ = "Luz"
VAR SPEAKER_BEN = "Ben"
VAR SPEAKER_OFFICER = "Officer"
VAR SPEAKER_DOCTORROSS = "DoctorRoss"
VAR SPEAKER_MEDICALINVESTIGATOR = "MedicalInvestigator"
VAR SPEAKER_CORONER = "Coroner"
VAR SPEAKER_TURNIPSEED = "Turnipseed"
VAR SPEAKER_DA = "DA"
VAR SPEAKER_DIRECTOREDWIN = "DirectorEdwin"

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