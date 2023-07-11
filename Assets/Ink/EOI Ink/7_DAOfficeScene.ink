=== DAOfficeSceneDA1 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_DA

- DA:: The media frenzy around this case is growing faster than a wildfire. 
+ [::Continue] 

- DA:: PLEASE tell me you have something.
+ [::Continue] 

- Luz:: We have a suspect: Eric Turnipseed, the driver of the pickup truck.
+ [::Continue] 

- DA:: Does he have a criminal record? 
+ [::Continue] 

//pulls up Turnipseed's profile 
 ~ presentEvidence("DAOfficeSceneD2")
-> END

=== DAOfficeSceneD2 ===
we made it continue yay {submittedEvidence}
+ [::Continue] 
-> END