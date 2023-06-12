== Drive_to_AccidentScene ==
<b>Accident scene:</b>
The pavement is shining from work lights from fire engines, paramedic trucks, and a squad car.  The police have already set up flares to divert traffic. But this early in the morning, no one is driving.
"At least it's stopped raining," says Ben.
"That's probably the only good news we'll have all night," you say.  As you get out of the SUV, the two paramedic trucks drive off, with lights and sirens.
* [Talk to the police officer] -> talk_to_police



/* 
How to write dialogue: https://github.com/inkle/ink/blob/master/Documentation/WritingWithInk.md#advanced-mixing-choice-and-output-text 

Weave syntax: https://github.com/inkle/ink/blob/master/Documentation/WritingWithInk.md#part-2-weave
*/

== talk_to_police ==
You and your partner approach a police officer at the scene.  His name tag says Robinson.
"Hello, detectives," says the police officer. "You know who was driving that car?"
* "Nope[."],"
* "That's what we wanted to ask you[."]," 
- <> you reply. // <> is GLUE - keeps text on one line
"Byron Stark."
"The actor?" exclaims your partner.
"The one and only," the officer responds.
* "No way..."[] you say.
* "Who's that?"[] you say.
Your partner looks at you, "The guy from <i>Nowhere Fast</i>," he says quietly.
"Oh wow," you reply.
- "Crazy, right? No one is invincible," the officer says without changing his tone.
* "Who was the guy in the pickup truck?"[] you ask.
Your partner looks at the officer keenly.
 -"Eric Turnipseed," the police officer responds flatly. "48 years old. He has a record of DUIs."
You turn to see your partner seething.
"Not again!" he exclaims. "This is the fifth drunk driver this month!"
* "That's enough, Ben!"[] you snap. Your partner composes himself.
There is silence for a few seconds. You notice that the police officer's expression hasn't changed all this time.
-> end_meeting_officer
* "Did you find any booze in the truck?"[] you ask.
"No alcohol to be found," says the officer. "The driver was confused when I arrived.  Can't be sure it was from drinking. But the paramedics may have more to tell you."
-> end_meeting_officer
=== end_meeting_officer ===
*  [Continue]
-> any_more_questions
=== any_more_questions
"Any more questions?" he finally asks.
* "Not right now[."]," you say.
- You and your partner walk away from the police officer. You notice that your partner is making an effort to control his emotions.
"All right," he says, his voice slightly quavering, "I'm going to take some measurements."
"You go do that," you respond, trying make your voice sound deeper. "I'll go inspect the vehicles."->inspect_vehicles

== inspect_vehicles ==
* [Inspect the car]You walk toward the car.
-> inspect_car
* [Inspect the pickup]You walk toward the pickup.
-> inspect_truck
* ->
You've thoroughly investigated the two vehicles. Now it's time to meet up with your partner again.->meet_with_partner

== inspect_car ==
* [Inspect the exterior] -> inspect_car_ext
* [Inspect the interior]You look into the car. -> inspect_car_int
* -> 
"I think I've gotten all the information I can from the car," you tell yourself. -> inspect_vehicles

== inspect_car_ext ==
You walk around the car. You can tell that the car collided from the front: the headlights and the front grill are smashed. -> inspect_car

== inspect_car_int ==
* [Inspect seats and floor] -> inspect_car_seats
* [Inspect dashboard] -> inspect_car_dash
* [Look for EDR port] -> inspect_car_edr
* -> inspect_car

== inspect_car_seats ==
You look down at the seats and floor. You notice that the driver's seatbelt is intact. -> inspect_car_int

== inspect_car_dash ==
You look at the dashboard. You see that the car's headlights were turned off. -> inspect_car_int

== inspect_car_edr ==
You feel around the inside of the car until your hand finds a panel. Removing it reveals the socket for the Event Data Recorder. You pull out your kit, plug the cable into the port, and download the blackbox data. -> inspect_car_int


== inspect_truck ==
* [Inspect the exterior] -> inspect_truck_ext
* [Inspect the interior]You climb into the truck. -> inspect_truck_int
* -> 
You're done searching the truck. -> inspect_vehicles 

== inspect_truck_ext ==
You make your way around the perimeter of the truck. You notice that the headlights are still on. The driver's door is caved in, meaning the truck was hit from this side. -> inspect_truck

== inspect_truck_int ==
* [Inspect seats and floor] -> inspect_truck_seats
* [Inspect dashboard] -> inspect_truck_dash
* [Look for EDR port] -> inspect_truck_edr
* -> inspect_truck

== inspect_truck_seats ==
You look all over the seats and the floor. You notice a small transparent cylinder. Before touching it, you photograph exactly where you found it.  You see that it is filled with prescription medication. You can make out the name on the prescription: Eric Turnipseed. -> inspect_truck_int

== inspect_truck_dash ==
You look over the dashboard. You see that there is an IID - ignition interlock device - installed. Not surprising, considering the truck driver's history of DUI's. -> inspect_truck_int
== inspect_truck_edr ==
You search all around the inside of the truck. Finally you find the Event Data Recorder port. You plug into the port and extract the truck's blackbox data. -> inspect_truck_int

== meet_with_partner ==
* [Look for your partner]
- You find your partner. He is holding some documents in his hands.
"All done," he says. "I made a diagram of the collison and did 3D laser scans of the vehicles."
"Nice work," you tell him. "I found more clues when I examined the two vehicles. I think we need to go talk to the police officer again."
* [Walk toward the officer]
- Officer Robinson looks pleased to see you and your partner.
"Find anything?" he asks.
"Oh yeah," you reply. "For one thing, it doesn't look like our actor was wearing his seatbelt." 
Your partner cringes. 
"I'll have to confirm with the paramedics that this was the case. The seatbelt in the pickup truck was cut, most likely by the paramedics when they freed him from the wreckage."
* [Continue]
-> traffic_cam
=== traffic_cam ===
"Anyway," you continue, "I wanted to ask you where the victims were taken."
"UCLA Medical Center," he replies.
You give the officer your thanks, and you and your partner both turn toward your car.
"Wait!" the officer shouts, "Did you check the light?"
"What?" you say.
"The traffic light. It might have a camera on top."
You turn your head toward the pole at west end of the intersection. How did I overlook that? you think to yourself.
* [Walk to the traffic light]
- You stand underneath the traffic light and look straight up. Sure enough there is a small camera poking out. You tell Ben to make a note of the traffic camera and to ensure that the footage makes its way to the two of you. He nods.
"All right, let's get going," you tell your partner.
* [Drive to the hospital] -> Drive_to_ER