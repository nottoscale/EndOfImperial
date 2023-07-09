=== PoliceStationSceneBen1 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_BEN

- Ben:: There you are! What took so long? You usually beat me everywhere. 
+ [::Continue] 

- Luz:: I... uh... had a fender bender. 
+ [::Continue] 

- Ben:: Are you okay? 
+ [::Continue] 

- Luz:: I'm fine. So tell me, do we have info from the cars' data recorders? 
+ [::Continue] 

- Ben:: Officer Robinson says he has something for us. 
+ [::Continue] 
-> PoliceStationSceneOfficer1

=== PoliceStationSceneOfficer1 ===
~leftSpeaker = SPEAKER_BEN
~rightSpeaker = SPEAKER_OFFICER

- Officer:: Detectives, here is the data you requested for Bryon Stark's case. 
+ [::Continue] 

- Ben:: Finally!
+ [::Continue] 

- Ben:: You wouldn't believe the pressure we've been under to close this case. 
+ [::Continue] 

- Officer:: Oh, yes I would. 
+ [::Continue] 

- Officer:: I've been around here longer than you think, Detective Romero.
+ [::Continue] 

- Officer:: Here's Stark's report. 
+ [::Continue] 

//show Stark's car report
-> PoliceStationSceneOfficer2

=== PoliceStationSceneOfficer2 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_OFFICER

- Luz:: Wow. Stark was going twenty over the posted limit. He didn't even try to brake. 
+ [::Continue] 

- Officer:: And here's Turnipseed's report. 
+ [::Continue] 

//show Turnipseed's car report

- Luz:: Looks like Turnipseed was paying attention. He braked and turned the wheel right before the crash. 
+ [::Continue] 

- Luz:: What about camera footage? 
+ [::Continue] 

- Officer:: It's here on the computer. Just came in. 
+ [::Continue] 

//clip shows

- Officer:: I can't believe this. It's like Stark didn't see the pickup at all!
+ [::Continue] 

- Luz:: Or the red light. 
+ [::Continue] 
-> PoliceStationSceneOfficer3

=== PoliceStationSceneOfficer3 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_BEN

- Ben:: Was Stark seeing ANYTHING at the time of the crash? It's like he was blind! 
+ [::Continue] 

- Luz:: No. Not blind. 
+ [::Continue] 

- Luz:: I think I know what happened. We need to go talk to the DA. 
+ [::Continue] 

- Luz:: Thank you, Officer Robinson.
+ [::Continue] 
-> END
-> END