=== DayCoffeeShopSceneBen1 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_BEN

- Ben:: Ugh. MORE coffee?! You've got a stomach of steel. 
+ [::Continue] 

- Luz:: Any updates? 
+ [::Continue] 

- Ben:: Yeah. I slept for a full four hours, and it was glorious. 
+ [::Continue] 

- Luz:: I meant updates on the case. 
+ [::Continue] 

- Ben:: Oh. Yep, I just got the cell phone records!
+ [::Continue] 

- Luz:: Great. Let's see if they were using their phones around 3 A.M. 
+ [::Continue] 

//pulls up mobile service usage report
 ~ receiveAndQuizInventoryItem("{TURNIPSEED_PHONE}::DayCoffeeShopSceneBenQuiz2Question")
-> END

//prompt: When was his last call? 

=== DayCoffeeShopSceneBenQuiz1Answer === 
//when you get it correct
~resetDialogueFaces()
Looks like it was well before the crash. 
+ [::Continue] 
-> END

=== DayCoffeeShopSceneBenQuiz2Question === 
~resetDialogueFaces()
 ~ receiveAndQuizInventoryItem("{STARK_PHONE}::DayCoffeeShopSceneBen3")
-> END

=== DayCoffeeShopSceneBenQuiz2Answer === 
~resetDialogueFaces()
Looks like it was well before the crash. 
+ [::Continue] 
-> END

=== DayCoffeeShopSceneBen3 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_BEN

- Luz:: Okay. Let's head out to the movie set. The DA wants us to rule out Bryon Stark as a suspect. 
+ [::Continue] 

- Ben:: Yeah, but Luz? 
+ [::Continue] 

- Luz:: Yeah? 
+ [::Continue] 

- Ben:: You should really give this sleep thing a try. 
+ [::Continue] 

- Luz:: I would, but who needs sleep when you have coffee? 
+ [::Continue] 

- Ben:: Sleep helps your long-term memory. It helps you process the day's events.
+ [::Continue] 

- Luz:: My memory's fine! And I'm a detective! I process events all the time. 
+ [::Continue] 

- Ben:: It's also where you process emotions. And it reduces depression and anxiety. 
+ [::Continue] 

- Luz:: Are you saying I'm MOODY? I don't have time for that. And we're wasting time, Romero. Let's get going. 
+ [::Continue] 
-> END