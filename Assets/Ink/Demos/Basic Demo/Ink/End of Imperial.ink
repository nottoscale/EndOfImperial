INCLUDE 02_Accident.ink
INCLUDE 03_ER.ink
INCLUDE 04_Coroner.ink
INCLUDE 05_ER_2.ink
INCLUDE 06_DA.ink
INCLUDE 07_Movie_Set.ink
INCLUDE 08_Coroner_2.ink
INCLUDE 09_Accident_2.ink
INCLUDE 10_DA_BOSS.ink
INCLUDE 11_EPILOGUE.ink

// Sleep Mystery: End of Imperial
// An interactive media learning game
// (c) 2016-19 Indelible Learning, Inc.
//

//NOTE: When you export to web file name should be "End of Imperial" for title to properly appear.

An Interactive Story Based on Actual Events

. . . by Indelible Learning, Inc.

//
// Opening scenario of collision
//
- (menu)
+ [Play from beginning]  -> Cutscene1
+ [Select Scene] ->
    ++ [Opening] -> Cutscene1
    ++ [Accident] -> Drive_to_AccidentScene
    ++ [Emergency Room] -> Drive_to_ER
    ++ [Coroner] -> Drive_to_Coroner
    ++ [Emergency Room 2] -> Drive_to_ER_2
    ++ [District Attorney] -> Drive_to_DA
    ++ [Movie Set] -> Drive_to_Movie_Set
    ++ [Coroner 2] -> Drive_to_Coroner_2
    ++ [Accident 2] -> Accident
    ++ [District Attorney 2] -> Drive_to_DA_BOSS
    ++ [Epilogue] -> EPILOGUE
    ++ [--Back--] -> menu
    
=== Cutscene1 ===
<b>Opening scene:</b> 
It is night. You are looking out the windshield of a sports car driving down the road. Rain drops make small bursts of light at they strike the glass, and you can hear the wipers swinging back and forth across the wet glass.
Occasionally, headlights of opposing traffic in the distance, then zoom past.  Otherwise it is quiet.

*   [Continue]
-> Cutscene2
=== Cutscene2 ===
Next scene:
You are looking out the windshield of a bigger car, maybe a truck. It is also night, with the rain hitting the windshield, and the wipers squeaking across the glass.
You can hear country music playing, but you can't quite make out the song.
*   [Continue]
-> Cutscene3
=== Cutscene3 ===
The screen is black.
You hear the sound of crunching metal, shattering glass, and squealing tires.
Then all is quiet, except for country music playing.
*   [Continue]
-> Cutscene4

//
// Detective's SUV outside the Coffee Bean
//
=== Cutscene4 ===
You are behind the wheel again. The rain is still falling on the glass. The windshield wipers are not moving. The car is not moving.
Your phone begins to buzz.

*   [Ignore your phone...] You rest your eyes for a moment.
-> Wake_up
*   [Look at your phone...] 
-> PhoneMsg_1

=== PhoneMsg_1 ===
You look at your phone, and see that you have a new message: 
+ [Continue]
-
= = WEST BUREAU - STATION 14 = =
To: 14H09
TIME: 0235
DR: 19-20-24239
MVA W/ INJURIES
IMPERIAL HWY & VISTA DEL MAR
LAPD, LAFD ON SCENE
+ [Continue]
-> Head_Out_from_CoffeeShop

=== Wake_up ===
*   [Continue] "Wake up, Maria" a voice says. "We've got a case!"
-> Got_a_Case_per_Ben
-> Drive_to_AccidentScene

=== Got_a_Case_per_Ben
*   [Don't call me that.] "I told you, my name is Luz," you snap back. Ben may have only been your partner for a week, but it really annoys you that he can't get your name right. Only your mother called you Maria.
"Ok, Luz." he says. "Sorry, I keep forgetting."
-> PhoneMsg_1
"It's on the center console," he says. "And should be on your phone by now."
-> PhoneMsg_1
*   [What case?] "What case?" you ask.
"It's on the center console, and should be on your phone by now."
-> PhoneMsg_1

=== Head_Out_from_CoffeeShop ===
*   [Drive to accident scene] You start the car...
-> Dont_Leave_Your_Partner

=== Dont_Leave_Your_Partner ===
Wait: You can't drive off without your partner!
*   [Wait for your partner] You wait for Ben Romero, your partner, to return with your coffee.
->Wait_for_Partner
=== Wait_for_Partner ===
You flash your headlights, which shine into the glass front of a coffee shop.  The man in front of the counter looks back at you with wide eyes.
You honk the horn.  He finishes up at the counter, grabs two cups of coffee, and rushes to the door.
You start the engine as he climbs inside your SUV.
*   [Continue] "What's up, Maria?" he says.
-> Got_a_Case_per_Luz
=== Got_a_Case_per_Luz ===
*   [Don't call me that.] "I told you, my name is Luz," you snap back. Ben may have only been your partner for a week, but it really annoys you that he can't get your name right. Only your mother called you Maria.
"What else, Sherlock, we've got a case!" You back the SUV out of the parking spot, and head out. "Didn't you get the page from West Traffic?"
Ben's phone begins to buzz.  "It's coming in now," he says.  "For some reason, your phone is always faster than mine."
Ben reads off the particulars, and tries to give you directions to the intersection of the accident.
But you already know where it is: just west of the airport.
-> On_route_to_accident
*   [We've got a new case] "Take a look, Ben," you say, pointing at the console display. "We've got a new case."

He has been your partner for only a week, but you wish he bothered to get your name right.  Only your mother called you Maria.  Everyone else calls you Luz.
Ben reads off the particulars, and tries to give you directions to the intersection of the accident.
But you already know where it is: just west of the airport.
-> On_route_to_accident
=== On_route_to_accident ===
* [Continue]

-> Drive_to_AccidentScene


-> END