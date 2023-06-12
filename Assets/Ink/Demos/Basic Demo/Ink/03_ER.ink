
== Drive_to_ER ==
You hop into the car with your partner and drive off...
* [Continue]
- ...You arrive at UCLA Medical Center.
* [Talk to your partner]
- "Let's split up," you tell your partner. "I'm going to try to interview some people. You work on a warrant for cellphone records, and put in the paperwork for the traffic camera footage."
"Sounds good," he says. He leaves you alone in the hospital lobby.
* [Talk to charge nurse]
- You approach the charge nurse. "Hello," you say, "I'm Detective Montoya. I need to know where two MVA victims - Byron Stark and Eric Turnipseed - are being treated."
The nurse squares her shoulders as she responds to you, "Byron Stark is in critical condition in ER Patient Bay 3." She continues, "Eric Turnipseed is in serious but stable condition upstairs in Trauma Surgery."
"Thank you ma'am," you reply.
Now, where should I go first? you ask yourself.->visit_victims

== visit_victims ==
* [Visit Byron Stark] -> visit_actor
* [Visit Eric Turnipseed] -> visit_trucker
* ->
- "Ok, time to meet up with my partner," you tell yourself.
* [Look for Ben]
- You find him standing in the hospital lobby, apparently waiting for you. "Good to see you," he says.
"Same here," you respond. "How did it go getting those cellphone records?"
"Great. We should be getting our hands on them in the coming days."
"Nice work. I was able to get some information here, but not as much as I hoped for. One more thing: Byron Stark is dead."
Your partner frowns, "I already heard. Well, where do we go from here?"
"The coroner's office."
* [Get in the SUV] -> Drive_to_Coroner

== visit_actor ==
You head on over to ER Patient Bay 3. You see {visit_trucker:the ER doctor from Trauma Surgery|a doctor} surrounded by four others. One is a paramedic.
"We got a pulse here?" asks the doctor.
"130 and thready," says the paramdic. "Respiration 36."
You can see the patient moving his hands.
"Neuro status?" again the doctor.
"Responds only to pain. GCS 5." says the paramedic.
* [Continue]
-> Code_1
=== Code_1 ===
The doctor uses her stethoscope to listen to the actor's chest.
"I'm hearing good air bilaterally."
"Let's shift the ambu bag to the ventilator."
"Okay," says a woman in blue scrubs. "We're on vent."
"Normal saline bolus," says the doctor. "Get CBC, Chem 12, tox screens, 12-lead ECG, and XRays stat."
* [Continue]
-> Code_2
=== Code_2 ===
An alarm sounds.
"We've got VFib!" shouts a nurse.
"Start chest compressions," says the doctor.
A nurse starts CPR.
"Stop compression for a second so we can see what rhythm we have."
* [Continue]
-> Code_3
=== Code_3 ===
"Still V Fib," says the nurse.
"Put pads on," says the doctor. A nurse takes two white plastic pads and attaches them to the actor's bare chest.
"Let's defibrillate at 360 joules."
Nurse Ana says, "I am clear, you are clear, everybody is clear. Oxygen clear."
She pushes the defibrillator button. You hear a dull thud.
"Shock delivered," she says.
* [Continue]
-> Code_4
=== Code_4 ===
"Let’s resume compressions and administer epinephrine 1 milligram IV push," says the doctor. 
"Who is scribing?"
"I am," says the lead nurse. 
"Let me know when 2 minutes have passed, please."
Nurse Ana says, " 1 milligram epinephrine in. Flushed with 20 CCs normal saline."
The nurse doing chest compressions calls out, with great effort, "28 - 29 - 30!"
And the paramedic takes over.  CPR is hard work.
* [Continue]
-> Code_5
=== Code_5 ===
The doctor says, "Prepare for 300 mg amiodarone IV push, please."
"I'm gettomg a good pulse with compressions," says Nurse Ana. 
"Two minutes," says the lead nurse.
"Let’s stop compressions and reassess the rhythm, please," says the doctor.
"Still VFIB," says the doctor. "Let’s defibrillate at 150 joules."
Nurse Ana again says, "I am clear, you are clear, everybody is clear. Oxygen clear."
Then another thud.
"Shock delivered," she says.
* [Continue]
-> Code_6
=== Code_6 ===
"Let’s resume compressions, and administer amiodarone 300 milligrams IV push," says the doctor. "And can we get glucose, please?" 
"Good air bilaterally," says nurse Ana.
"What is our oxygen saturation?" asks the doctor.
"98% on 2 liters O2," says the lady in blue scrubs.
* [Continue]
-> Code_7
=== Code_7 ===
The paramedic is still doing CPR.
"Can we change compressors?"
"Okay," grunts the paramedic. He switches with the charge nurse.
"Let's give 1 amp of D50 please," says the doctor. "IV push."
* [Continue]
-> Code_8
=== Code_8 ===
"How long has it been since our last epinephrine?" asks the doctor.
"5 minutes," answers the scribe nurse.
"Okay," sas the doctor. "Let’s prepare another epinephrine IV push."
Nurse Ana says, "Dextrose 50% 1 amp is in."
"SpO2 is 98%," says the lady in the blue scrubs.
"Epi 1 milligram is in."
* [Continue]
-> Code_9
=== Code_9 ===
This goes on for another 20 minutes. You can't stop watching.
* [Continue]
-> Code_10
=== Code_10 ===
After 33 minutes, no luck. The doctor ends the code.  The scribe nurse writes the time.  
The paramedic, who by this time is profusely sweating from all that CPR, drops his hands by his sides.  He doesn't have the energy to remove his gloves.
* [Continue]
-> Code_11
=== Code_11 ===
"Ana," says the doctor, "Please alert the coroner's office and page the medical investigator on call."
"Yes, doctor," says Ana.
A voice call out, "We've got a possible GI bleed in bay 6."
"I'm on my way," says the doctor.
With that the doctor turns and starts walking briskly away from you.
* [Continue]
-> Code_12
=== Code_12 ===
"Shoot," you mutter under your breath, "looks like I won't get a chance to talk to her right now."

You walk back to the waiting room and take a seat. You close your eyes and before you know it, you're asleep...
* [Continue]
- You groggily wake up. "Did I just...?" you say to yourself. You check your smartphone: thankfully, you've only been out for half an hour.
You look in front of you. You see a sharply dressed woman. She is looking straight at you. Her expression is friendly, although somewhat tired, and there are prominent bags under her eyes.
"Hi, I'm Emily Nguyen, the medical investigator," she says. "I'm guessing you want to talk to me?"
* "..."
* "Huh?"
* "What?"
* "Yes["],"
- <> you respond.
"Yes, I can see you're an LAPD detective. Are you here about the two-car collision on Vista del Mar and Imperial?"
"Oh, oh yeah," you say, slowly coming back to your senses. "You're just the person I've been meaning to talk to."
"Well, I haven't collected any samples yet. Why don't you join me?"
"That would be excellent," you tell her. "Thank you."
The medical investigator begins walking down a hallway.
* [Follow her]
- You follow her into a a room. You gasp as you see Byron Stark's lifeless body lying under a sheet.
Emily pulls out some tools from her bag and begins taking fluid and tissue samples from the body. You try maintaining your professionalism, but after several seconds, you are so revolted that you have to look away.
"All done," the medical investigator says finally, and you breathe a sigh of relief. "Now I just need to bag and label this evidence..." she adds. -> visit_victims

== visit_trucker ==
You take the elevator up to Trauma Surgery. "I hope he's awake," you say to youself. 
"And if he's awake, I hope he's sober enough to answer questions."{visit_actor:You try to push the image of Byron Stark's corpse out of your mind.|.} Once, you get there, you see {visit_actor:the ER doctor who was trying to resuscitate Stark|an ER doctor}.
* [Approach the doctor]
- The doctor doesn't look busy, so you come up to her. "Hello," you say, "I'm Detective Montoya."
"I've got a few minutes to talk," says the doctor. "How can I help you?"
//Read about the below syntax (weave) here:
//https://github.com/inkle/ink/blob/master/Documentation/WritingWithInk.md#advanced-loops-in-a-weave
- (opts)
* "Do you know where Mr. Turnipseed is?"[] you ask.
"He's in surgery right now. You won't be able to talk to him," she replies.
* "How is Mr. Turnipseed's condition?"[] you ask the doctor.
"Well, he was awake when he arrived at the hospital. Although, he was disoriented. He is in serious, but stable condition at the moment."
* -> done
- -> opts
- (done)
The doctor's smartphone beeps.  She looks at it and says to you, "Sorry, gotta go." She begins walking briskly past you.
"Wait!" you turn toward the doctor, "Can you tell me anything about Byron Stark?" you blurt out.
But at this point the doctor is well past you, and either didn't hear you or is acting like she didn't.
"I'll be back," you say.
* [Continue] -> visit_victims

