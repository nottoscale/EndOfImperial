
//->Drive_to_Coroner
== Drive_to_Coroner ==
You pull up to an impressive red brick building. In front, a sign reads:
County of Los Angeles<br/>Medical Examiner Coroner<br/>Visitor Entrance
"Nice place," your partner mutters. You both walk inside. In the lobby there is a receptionist.
* Talk to the receptionist
- You greet the receptionist and tell him that you are LAPD detectives and that you are investigating the accident between the car and the pickup on Vista del Mar and Imperial.->ask_receptionist

==ask_receptionist==
{speak_to_coroner+speak_to_mi==1:You and your partner walk back to the receptionist in the lobby. "Need anything?" the receptionist asks you.} //Happens if you have spoken to the coroner or the MI, but not both.
* [Ask to speak to coroner]The receptionist makes a phone call, then informs you that the coroner will be waiting for you in his office.
    ** [Walk to coroner's office] -> speak_to_coroner
* [Ask to speak to medical investigator]The receptionist makes a call. Then he tells you where to find the medical investigator.
    ** [Go to medical investigator] -> speak_to_mi
* ->
You head back to the lobby with your partner. "I feel like we have a ton of information," you tell him. "Now we need to take some time to make sense of it."
"Agreed," he responds.-> interpret_evidence
== speak_to_coroner ==
You take the elevator up to the coroner's office. When you reach the office, you see a serious, yet friendly old man with white hair.
"Please come in," he says.
You and your partner walk into his office and he hands you a document. "This is Mr. Stark's autopsy report," he tells you.
* [Examine the autopsy report]
- You begin poring through the pages of the report: "The victim suffered broken legs, hips, and wrist."
"Victim experienced blunt chest trauma."
"Cause of death: Myocardial contusion followed by cardiac arrest"
"Blood, fluid, and tissue samples have been taken - results are pending."
The coroner interrupts your reading, "Find what you need?"
"Yes, thank you very much," you say.
* [Leave the office]->ask_receptionist
== speak_to_mi ==
You and your partner make your way toward a dimly lit room. You see the medical investigator who you spoke to in the hospital standing there, and she smiles at you. "Good to see you again!" she says.
You make an effort to smile back at her, trying not to think about how unpleasant it was to watch her collect those samples from the dead body. "Good to see you, too," you say.
* [Tell her about the pills you found in the pickup truck]
- You tell her about the pill bottle you found in Eric Turnipseed's truck.
"Oh yeah," she says, "I took a look at that. The bottle was labelled diazepam, the generic name for Valium. It's a benzodiazepene."
* "Could the pills have impaired the driver?"[] you ask.
- "You bet," she responds."Benzodiazepenes are powerful sedatives."
She continues, "But we need to run toxicology on the pills to make sure this really is diazepam. Plus, we don't know if Mr. Turnipseed was on these pills on the night of the accident."
* "True["]," you respond.
- "That reminds me," the medical investigator says, "I'm going to the impound lot to look for more clues in Mr. Stark's car. Care to join me?"
* ["Ok..."]
- Suddenly, an image from the last time you "joined her" rushes to the front of your mind. You wince. "Sure thing!" your partner interjects. You give him a sideways look.
"Great," the medical investigator says, "come with me in my car." And with that she heads out of the dim office.
* [Follow the medical investigator]
- You follow the medical investigator to her car. You sit in the passenger seat and your partner sits in the back. Soon you're at the impound lot. The three of you get out of the car. The medical investigator walks you through the rows of crumpled cars. Finally, you recognize Byron Stark's car.
"I think I did a pretty good sweep of this car the first time around," you say, "but another try wouldn't hurt."
- (opt)
* [Inspect the front seats] You open the driver's door and enter the front of the car. You open the glove compartment, check under the floormats, but find nothing of interest. "Looks clear," you say. 
* [Inspect the back seats] You open the back door on the driver's side and climb into the back of the car. You look under the floormats. Nothing. You check behind the headrests. Just some unimportant papers. You stick your hand into the driver's seat pocket. Empty. You try the passenger seat pocket.
"Hey!" you exclaim.
"What did you find?" your partner asks you.
You pull your hand out of the pocket and reveal a transparent orange pill bottle.
"Whoa!" the medical investigator says.  Let me photograph it, and then bag it for evidence.
* [Inspect the trunk] You see that the trunk has already been partially opened. You open it all the way and find that it is empty.
"There was a suitcase in there," the medical investigator tells you, "but that's already been inspected: nothing but clothes inside."
"Hmm," you say.
* -> done
- -> opt
- (done)
"Ok, I'm done searching," you say. "All I found was this pill bottle."
"Great work," the medical investigator tells you. "Let's take the bottle back to the lab to run toxicology tests."
* [Get in the medical investigator's car]
- The three of you get in the medical investigator's car and head back to the coroner's office. You and your partner follow the medical investigator into a dingy room, which you perceive to be the laboratory.
Emily opens the evidence bag containing the pill bottle you found in Byron Stark's car, and proceeds to run tests on the residue inside.
"There may be enough powder from the pills to determine what was inside, but these tests will take some time," she says, and hands you back the pill bottle. You look at the label on the bottle.
*   [Continue]
-> tox_lab
=== tox_lab ===
"Xanax. That's some kind of tranquilizer, isn't it?" you ask the medical investigator.
"Xanax is the brand name for alprazolam. It is also a benzodiazepene!"
"So that means either one of the drivers, or both of them, could have been medically impaired at the time of the accident," you interject.
"Or maybe neither of them," the medical investigator notes. "Unfortunately, we have to wait for these test results to come in before we know for sure."
* [Say goodbye]
 - "Well, thank you for your time, you've been a great help," you tell the medical investigator. "We'll be leaving you now."
"Best of luck," the medical investigator responds, and she flashes you a smile.
->ask_receptionist

== interpret_evidence ==
* [Talk about the actor] -> interpret_actor
* [Talk about the truck driver] -> interpret_trucker
* ->
- Bzzzzzzzzzz. It's your phone.
"Oh, I just got a message," you say. "Eric Turnipseed is awake and stable."
* [Go to the hospital]
You and your partner get in your car and make for the hospital.
-> Drive_to_ER_2
== interpret_actor ==
"What do we know about Byron Stark?" you ask your partner.
"Well, he died," your partner responds.
"Right, and he died as a result of the blunt chest trauma he incurred following a frontal collison."
 "Ok, let's keep going," you say.
* [Drugs in actor's car]
- "We can't deny," you say, "that we found prescriptions in Byron Stark's car.
"Oh, right, I forgot about that," your partner says with a frown. "What drug was it again?"
"Xanax," you remind him.
"Oh, yeah. Everyone in Hollywood is on that. I saw an E! special on it. They all have anxiety."
"So, there's a good chance he was on Xanax while he was driving," you interject.
"I mean, probably," your partner admits.->interpret_evidence

== interpret_trucker ==
"So, what do we have on this Turnipseed guy?" you ask.
"Loser, DUIs, prescriptions in his car" your partner reminds you.
"Yeah, he had Valium, in the same class of drugs as Stark used - benzodiazepenes," you add. "But we can't know for sure if either of them was using until the toxicology reports come in."
"Unfortunately. And we can't prove that Turnipseed was drunk until then either."
* [Mixing meds and alcohol]"The medical investigator said that benzodiazepenes are sedatives," you say, "and I know that alcochol is a depressant. Those are two downers. Taking both would probably making your reaction time unimaginably slow."
-"That would explain how he could've caused this accident. I bet you he ran a red light."
"Yeah," you say, "but this is all just speculation. Nothing more than a conspiracy theory at this point..."->interpret_evidence
