// External Functions
EXTERNAL debug(message)
EXTERNAL changeScene(message)

// itemName::Continue Knot
// shows inventory item and allows player to close whenever
EXTERNAL receiveInventoryItem(itemNameAndContinueKnot)
// same as receive but there may be quiz knots 
// before we can close
EXTERNAL closeReadInventoryItem(itemNameAndContinueKnot)

// allows player to present evidence from inventory
EXTERNAL presentEvidence(submitKnotName)
// tell unity that player has selected the right evidence
EXTERNAL correctEvidence(noParam)

// hide and show prompt message for player
EXTERNAL showPrompt(message)
EXTERNAL hidePrompt(noParam)

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
INCLUDE CutSceneBeforeCoffeeShopNight.ink
INCLUDE CutSceneBeforeHospital.ink
INCLUDE CutSceneBeforeCoronerAutopsyScene.ink
INCLUDE CutSceneBeforeHospitalScene2.ink
INCLUDE CutSceneBeforeCoronerScene2.ink
INCLUDE CutSceneBeforeDayCrashScene.ink
INCLUDE CutSceneEnding.ink

// Characters
VAR SPEAKER_LUZ = "Luz"
VAR SPEAKER_BEN = "Ben"
VAR SPEAKER_OFFICER = "Officer"
VAR SPEAKER_DOCTORROSS = "DoctorRoss"
VAR SPEAKER_MEDICALINVESTIGATOR = "MedicalInvestigator"
VAR SPEAKER_CORONER = "Coroner"
VAR SPEAKER_TURNIPSEED = "Turnipseed"
VAR SPEAKER_DA = "DA"
VAR SPEAKER_DIRECTOREDWIN = "DirectorEdwin"
VAR SPEAKER_PHONE = "Phone"

// Inventory Items
VAR TURNIPSEED_PROFILE = "InventoryTurnipseedProfile"
VAR STARK_PROFILE = "InventoryStarkProfile"
VAR TURNIPSEED_PHONE = "InventoryTurnipseedPhone"
VAR STARK_PHONE = "InventoryStarkPhone"
VAR AUTOPSY_REPORT = "InventoryAutopsyReport"
VAR STARK_TOXICOLOGY_REPORT = "InventoryStarkToxicologyReport"
VAR TURNIPSEED_TOXICOLOGY_REPORT = "InventoryTurnipseedToxicologyReport"
VAR STARK_CAR_REPORT = "InventoryStarkCarReport"
VAR TURNIPSEED_CAR_REPORT = "InventoryTurnipseedCarReport"



// Global Variables
VAR leftSpeaker = ""
VAR rightSpeaker = ""
VAR submittedEvidence = ""

// Map pin variables
VAR canGoToHospital = false

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