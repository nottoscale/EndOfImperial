== Drive_to_DA_BOSS ==
The two of you walk to the car. When you get there, you have to catch yourself before you start heading to the driver's door, and make your way to the passenger's side. 
"This is...pleasant," you say, enjoying the comfort of the passenger seat and the ability to kick your feet back for the duration of the ride. 
As Ben drives you enjoy watching him navigate the streets, feeling secure now that the wheel is in his non-sleep-deprived hands. But as you feel your destination approaching, you tense up.
"I got this," you tell yourself. "I've never been more ready."
And before you know it, the car comes to a stop at the D.A.'s office.
"Hey Luce," your partner says as he turns to you, "knock `em dead!"
* [Face the D.A.]
- "Sure thing!" you say, although your voice comes out as a squeak as you exit the car. You walk up the steps of the building, step inside, and make your way to the D.A.'s office.
Regina Brazil locks eyes with yours as you enter the room. "Detective Maria, how good it is to see you!," she bellows, her voice genuine and sarcastic at the same time.
Who? you think, and then recall your birth name.
"Good to see you too, D.A. Brazil!" you respond, mimicking her voice.
"Good to hear," the D.A. says. "So, did you prove that our pickup truck driver is guilty?"
"Well..." you say.
~ temp solved_4 = false
~ temp solved_6 = false
- (loop)
~ temp choice = 0
+ "The pickup truck driver was drunk."
~ choice = 1
+ "Byron Stark was on prescriptions when the crash occurred."
~ choice = 2
+ "Eric Turnipseed was on prescriptions when the crash occurred."
~ choice = 3
+ {not solved_4}"The actor ran a red light."
~ choice = 4
* "The pickup truck driver ran a red light."
~ choice = 5
+ {not solved_6}"Mr. Stark was speeding."
~ choice = 6
+ "Mr. Turnipseed was speeding."
~ choice = 7
+ "The actor was distracted while driving."
~ choice = 8
+ "The pickup truck driver was distracted while driving."
~ choice = 9
-{shuffle:
-Ok, so where's your proof.
-I see. Now what's the evidence for this.
-Ok. Prove it.
}
~ temp proof = 0
~ temp nonsense = false
+ "Traffic camera footage/data recorders."
~ proof = 1
+ "Toxicology report."
~ proof = 2
+ "Cell phone records."
~ proof = 3
+ "I dunno."
~ proof = 4
- {
- proof == 4:
    "<>{shuffle:
    - At least you're honest.
    - Ok. Try again.
    - Swing and a miss.
    - Any other ideas?
    }<>"
- choice == 1: //Eric drunk
    {
    - proof == 1:
        "What? he doesn't look like he's driving drunk."
    - proof == 2:
        "Huh? This report says that he DOESN'T have alcohol in his system."
    - else:
        ~ nonsense = true
    }
- choice == 2 or choice == 3: //Byron/Eric on meds
    {
    - proof == 1:
        "The footage can't prove that!"
    - proof == 2:
        "Hmmm...this says that he wasn't on them during the accident."
    - else:
        ~ nonsense = true
    }
- choice == 4: //Byron ran red light
{
    - proof == 1:
        "Whoa, how unexpected!"
        ~ solved_4 = true
    - else:
        ~ nonsense = true
}
- choice == 5: //Eric ran red light
{
    - proof == 1:
        "It's pretty clear from the footage that he has a green light."
    - else: 
        ~ nonsense = true
}
- choice == 6: //Byron speeding
{
    - proof == 1:
        "Amazing, you're right on the money."
        ~ solved_6 = true
    - else:
        ~ nonsense = true
}
- choice == 7: //Eric speeding
{
    - proof == 1:
        "Nope, looks like he's driving the limit."
    - else:
        ~ nonsense = true
}
- choice == 8 or choice == 9: //Byron/Eric distracted
{
    - proof == 1:
        "This footage doesn't prove that."
    - proof == 3:
        "These records show that he wasn't using his phone at the time of the accident."
    - else:
        ~ nonsense = true
}

}
{nonsense:
{shuffle:
        - "That doesn't make any sense."
        - "Do you even know what you just said?"
        - "Right..."
        - "Have you thought this through?"
}
}
{solved_4 and solved_6: -> done | -> loop}
- (done)
"Wow," the D.A. gasps, "this is shocking, now, isn't it?"
"Well yes," you try to say matter-of-factly, "yes it is."
"So, why did Byron Stark run that red light? What's the story?"
"Yes, from the evidence my partner and I have gathered," you respond, "it seems pretty clear to me that the answer lies in three pieces of evidence," and now you feel sure of yourself. 
"First...
~ temp ans_1 = 0
~ temp ans_2 = 0
~ temp ans_3 = 0
+ "The traffic camera footage/data recorders."
~ ans_1 = 1
+ "The toxicology report."
~ ans_1 = 2
+ "Director interview."
~ ans_1 = 3
+ "The cell phone records."
~ ans_1 = 4
+ "Eric Turnipseed interview."
~ ans_1 = 5

- "Second...
+ {ans_1 != 1}"The traffic camera footage/data recorders."
~ ans_2 = 1
+ {ans_1 != 2}"The toxicology report."
~ ans_2 = 2
+ {ans_1 != 3}"Director interview."
~ ans_2 = 3
+ {ans_1 != 4}"The cell phone records."
~ ans_2 = 4
+ {ans_1 != 5}"Eric Turnipseed interview."
~ ans_2 = 5

- "Third...
+ {ans_1 != 1 and ans_2 != 1}"The traffic camera footage/data recorders."
~ ans_3 = 1
+ {ans_1 != 2 and ans_2 != 2}"The toxicology report."
~ ans_3 = 2
+ {ans_1 != 3 and ans_2 != 3}"Director interview."
~ ans_3 = 3
+ {ans_1 != 4 and ans_2 != 4}"The cell phone records."
~ ans_3 = 4
+ {ans_1 != 5 and ans_2 != 5}"Eric Turnipseed interview."
~ ans_3 = 5
- {shuffle:
    - "Interesting, I would've never thought of that,"
    - "Hmm, what do they prove?"
    - "Really, tell me more,"
    - "Ok. Explain,"
}<> the director responds.
~ temp got_tox = ans_1 == 2 or ans_2 == 2 or ans_3 == 2
~ temp got_director = ans_1 == 3 or ans_2 == 3 or ans_3 == 3
~ temp got_phone = ans_1 == 4 or ans_2 == 4 or ans_3 == 4
{
- got_tox and got_director and got_phone:
    You smile. "It's simple really," you say. "Edwin Porter, the director of the movie Byron Stark was working on, said that they were filming from morning to late at night. On the night of the accident, they stopped filming at 2 a.m. As the lead actor, Stark had more lines than anyone else, and Mr. Richards even noticed that the work was taking its toll on him. Moreover, the director said that Stark had been acting particularly irritable in the last few days."
    "So, what you're suggesting," the D.A. interrupts you, "is that Byron Stark was really, really tired due to his work schedule. Exhausted."
    "That's only part of it. Everyone on the movie set was working long hours. But Stark wasn't sleeping."
    * [Keep going] ->
     "And the cell phone records add to the story," you say.
    "I thought they showed that neither driver was driving while distracted?" the D.A. insists.
    "Yes, that," you reply, "but also that Byron Stark was on his phone nonstop - 24/7. In fact, the only time he wasn't texting or tweeting was when he waa in front of the camera."
    "More proof that he...didn't sleep," the D.A. surmises.
    "Right."
    ** [Finish it off] ->
    You continue, "Finally, toxicology found abnormally high caffeine levels in his system. Plus, the tests found that the actor had been taking alprazolam."
    "Yeah," the D.A. interjects, "the caffeine proves he had been drinking coffee in order to go without sleep. But I thought he wasn't on any drugs at the time of the accident?"
    "Right, he wasn't," you say, "but alprazolam, commonly sold under the brand name Xanax, is a benzodiazepene.
    "Benzodiazepenes," you add, "are sedatives."
    "So," the D.A concludes, "he was taking the alprazolam as a downer, to counteract the caffeine that was keeping him up, in order to get a few hours of sleep when he got home."
    "Exactly," you say.
    *** [Continue] ->
    The D.A. looks past you as she speaks, "And so he just...dozed off, let his foot of the gas, and ran through that intersection.
    "Stark was at the peak of his career," she adds, "and just like that it all ended - right at the end of Imperial."
    You let the image Regina Brazil described form in your mind: the man slowly losing consciousness and gliding to his doom.
    "Well today you're at the peak," you hear the D.A.'s voice, as she pats you warmly on the shoulder, and the image gradually fades from your mind, "You've managed to impress even the unflappable Regina Brazil. You should be proud of yourself, dear."
    Suddenly, you realize that you don't even know where you are or who you're talking to. "Gotta go!" you tell the D.A., and head for the door. When you open it, you see your partner blocking your path.
    "Ben!" you exclaim, as you collapse right into his outstretched arms...
   **** [Continue] ->EPILOGUE
- else:
    {shuffle:
    - "Mmmm..."
    - "Uhhh..."
    - "Well..."
    - "You see..."
    - "It's kind of an interesting story..."
    }
    Wait, you think. I don't think I quite have it right:
    {ans_1 == 1 or ans_2 == 1 or ans_3 == 1: The camera footage just shows WHAT happened not WHY.}
    {ans_1 == 5 or ans_2 == 5 or ans_3 == 5: Eric Turnipseed only speculated about what was going on with Byron Stark; he never knew for sure.}
    {shuffle:
    - "Wait, let me give this another shot,"
    - "Uhh, let me try again,"
    - "Oops I messed up. Let me organize my thoughts,"
    - "Hmm. On second thought, maybe not,"
    }<> you say.
    + [Try again] -> done
}
