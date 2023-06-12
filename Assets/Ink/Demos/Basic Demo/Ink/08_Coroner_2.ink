== Drive_to_Coroner_2 ==
At the next light you make a right turn, and you're on your way to the coroner's office...
...Soon you arrive and make your way inside.
The coroner looks at you, "Moment of truth," he says in a bemused tone of voice. "You can find the summary reports on this computer," he says, pointing to a monitor on a table. You make your way to the computer and put your hand on the mouse.
- (loop)
* Summary report for Byron Stark[]:
<ul><li>Caffeine - positive</li><li>Alprazolam</li><ul><li>Blood - negative</li><li>Saliva - negative</li><li>Urine - positive</li><li>Hair - positive</li></ul></ul>
** [Continue]
-- "Ok, so he had caffeine in his system, not surprising, but how much?" you ask the coroner.
"Far from a dangerous level," the coroner responds calmly, "but much more than the average person."
**  [Continue]
--
"And he also tested positive for alprazolam," you say. "That sounds familiar, what's that again?" 
The coroner answers, "It's a benzodiazepene, commonly sold under the brand name Xanax."
"Oh yes," you say, "but he only tested positive for it in his hair and urine, not his blood or saliva. What does that mean?"
"Alprazolam," the coroner informs you, "stays in the blood stream for 24 hours, in the saliva for 2.5 days, in the urine for up to 4-7 days, and in the hair for 4 weeks."
//*   "So he was taking Xanax on the night of the crash[...]," you say.
//-> on_Xanax
//=== on_Xanax
//*   So he stopped taking Xanax[...]
//-> off_Xanax
//=== off_Xanax

"That means," you take some time to think this through, "that Byron Stark last took Xanax more than 2.5 days ago, meaning he didn't take it on the day of the crash."
"Yes," said the Coroner. "What alprazolam was left in his body was too little to have any effect on his driving."
"Looks like he was clean as a whistle," your partner comments.
* Summary report for Eric Turnipseed[]:
<ul><li>Alcohol - negative</li><li>Prescription drugs - negative</li></ul>
** [Continue]
-- "Oh boy...", you say under your breath, "Uh, Ben..." you call to your partner.
"Yeah?" he responds, inquisitively.
"Eric Turnipseed was clean. No alcohol. No drugs. No nothing."
Your partner's jaw drops, the innocence gone from his eyes. "Wha...nothing?!", he finally says, exasperated.
After a long moment of stunned silence, Ben regains his composure. "I'll bet you," he says affirmatively, "that he ran a red light, even while totally sober. That redne-"
*** [Stop him]
--- "Cool it, Ben!" you yell, sounding much angrier than you thought you would. "We can't just go making wild accusations like that. When the Turnipseed brothers told us that Eric didn't drink last night, we laughed in their faces...but who's laughing now?"
"Hmph," Ben grunts.
"I read a quote the other day, 'A lie can travel halfway around the world while the truth is putting on its shoes.'"
"Who said that?" your partner grumbles, his eyes now round and pitiful.
"Mark Twain," you respond.
"Hmm...it's true," your partner concedes.
* -> done
- -> loop
- (done)
"Find what you expected?", the coroner asks you, a hint of mockery in his serene voice.
"Looks like the world is full of surprises..." you say, as your shoulders slump.
* [Take your leave]
- "We'll be leaving now. Thanks for your help," you tell the coroner in a monotonous voice. "C'mon Ben, let's get going."
And the two of you exit the office, looking more like two zombies than detectives.
* [Continue]
- You and your partner get into your car. "Where to?" he asks, and with those words you think he sounds almost like his normal self.
You take some time to think. "You," you pause, "are going back to the station to check if the traffic cam footage has come in."
"And you?" your partner inquires, somewhat perplexed.
"I'm going to visit Eric Turnipseed at the hospital. I...need to apologize to him for how we treated him, and I want to ask him some more questions too."
"Seriously, apologize?" Your partner is beside himself. "People like him don't deserve apologies. C'mon we've been driving around like maniacs all day. Why don't you come to the statition with me and we can take it easy for a while?"
"No," you say, avoiding your partner's gaze, "I'm going."
Your partner slouches in his chair and lets out a puff of air. "Fine, suit yourself."
* [Let's roll]
- You drive to the station to drop off your partner.
* [Time to go]
- "Bye, Ben," you say as you let the man out of your car, and you begin driving back to the hospital. 
-> Accident
