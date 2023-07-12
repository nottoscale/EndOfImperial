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
 ~ receiveAndQuizInventoryItem("{TURNIP_PHONE}::DayCoffeeShopSceneBen2")
-> END

=== DayCoffeeShopSceneBenQuiz1 === 
This is the text that show when you click the right quiz hotspot.
+ [::Continue] 
-> END

=== DayCoffeeShopSceneBen2 === 
Insert after phone conversation here.
+ [::Continue] 
-> END