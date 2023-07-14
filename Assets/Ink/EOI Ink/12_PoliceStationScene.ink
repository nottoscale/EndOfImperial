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
-> END

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

-  Was Stark wearing his seatbelt?
+ [::Continue] 

//show Stark's car report
 ~ receiveAndQuizInventoryItem("{STARK_CAR_REPORT}::PoliceStationSceneOfficer2")
-> END

=== PoliceStationSceneStarkAnswer1 ===
~resetDialogueFaces()
Dr. S was right. Stark's seatbelt was unbuckled. 
+ [::Continue] 

- Did Stark have his headlights on? 
+ [::Continue] 
-> END

=== PoliceStationSceneStarkAnswer2 ===
Stark's headlights were off while he was driving at night!
+ [::Continue] 

- How fast was Stark going at time of impact?
+ [::Continue] 
-> END

=== PoliceStationSceneStarkAnswer3 ===
No signs of slowing down.
+ [::Continue] 

- Did Stark hit the brakes? 
+ [::Continue] 
-> END

=== PoliceStationSceneStarkAnswer4 ===
Stark didn't even touch the brakes. 
+ [::Continue] 
-> END

=== PoliceStationSceneOfficer2 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_OFFICER

- Luz:: Wow. Stark was going twenty over the posted limit. He didn't even try to brake. 
+ [::Continue] 

- Officer:: And here's Turnipseed's report. 
+ [::Continue] 

-  Was Turnipseed wearing his seatbelt?
+ [::Continue] 

//show Turnipseed's car report
 ~ receiveAndQuizInventoryItem("{TURNIPSEED_CAR_REPORT}::PoliceStationSceneOfficer3")
-> END

=== PoliceStationSceneTurnipseedAnswer1 ===
~resetDialogueFaces()
Seatbelt was on. 
+ [::Continue] 

- Were Turnipseed's lights on? 
+ [::Continue] 
-> END

=== PoliceStationSceneTurnipseedAnswer2 ===
Headlights were also on. 
+ [::Continue] 

- How fast was Turnipseed going at the point of collision?
+ [::Continue] 
-> END

=== PoliceStationSceneTurnipseedAnswer3 ===
Looks like there was a small amount of speed reduction. 
+ [::Continue] 

- Did Turnipseed use the brakes?
+ [::Continue] 
-> END

=== PoliceStationSceneTurnipseedAnswer4 ===
Turnipseed clearly slammed on the brakes- too late. 
+ [::Continue] 
-> END


=== PoliceStationSceneOfficer3 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_OFFICER

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
-> PoliceStationSceneOfficer4

=== PoliceStationSceneOfficer4 ===
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

=== PoliceStationSceneOfficer5 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_BEN

- Ben:: Go Luz! I believe in you. 
+ [::Continue] 
-> END