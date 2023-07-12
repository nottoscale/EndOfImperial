VAR talkedToOfficer = false

=== CrashSceneBen1 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_BEN

Ben:: Collected all the evidence yet? 
+ [::Continue] 
-> END

=== CrashSceneOfficer0 ===
{ talkedToOfficer:
    -> CrashSceneOfficer4
- else:
    -> CrashSceneOfficer1
}
+ [::Continue] 
-> END

=== CrashSceneOfficer1 ===
~leftSpeaker = SPEAKER_BEN
~rightSpeaker = SPEAKER_OFFICER
- Officer:: Wow! You guys got here fast!
+ [::Continue] 

- Ben:: No rest for the weary on the AM watch.
+ [::Continue] 

- Officer:: You're the new junior detective, right? 
+ [::Continue] 

- Ben:: That's right. I'm Ben Romero. 
+ [::Continue] 

- Ben:: Pleased to meet you, Officer Robinson.
+ [::Continue] 

- Officer:: Call me Roy. You're lucky you're paired up with Detect Montoya. She's the best!
+ [::Continue] 
-> CrashSceneOfficer2

=== CrashSceneOfficer2 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_OFFICER

- Luz:: Don't flatter me, Roy. 
+ [::Continue] 

- Luz:: What happened? 
+ [::Continue] 

- Officer:: Both driveres are in rough shape. No witnesses and no passengers. The paramedics just left for the hospital.
+ [::Continue] 

- Luz:: Do you know when the crash occurred? 
+ [::Continue] 

- Officer:: Sometime between 3 and 3:15 A.M. 
+ [::Continue] 

- Officer:: Both cars had event data recorders, but it'll take a while to get the data back. 
+ [::Continue] 

- Luz:: What about the traffic camera? 
+ [::Continue] 

- Officer:: I've got somebody working on the footage. It might--
+ [::Continue] 

- Luz:: --Take a while. I know. I know. Anything else? 
+ [::Continue] 

- Officer:: Um, yeah. Turns out one of our victims is a celebrity. 
+ [::Continue] 

- Luz:: Can you send me a profile of each driver? 
+ [::Continue] 

- Officer:: I'm sending it to you now, detective. 
+ [::Continue] 

- Phone: BZZZT
+ [::Continue] 

- Phone: Turnipseed Profile
+ [::Continue] 

//turnipseed's profile appears
 ~ receiveInventoryItem("{TURNIP_PROFILE}::CrashSceneOfficer3")
-> END

=== CrashSceneOfficer3 ===
- Luz:: Hmmmm. Drunk driving conviction from a few years back. 
+ [::Continue] 

- Officer:: Mhm. Blood alcohol content 0.2 -- That's twice the legal limit.
+ [::Continue] 

- Luz:: Can you send me a profile of each driver? 
+ [::Continue] 

- Officer:: I'm sending it to you now, detective. 
-> CrashSceneOfficer4

=== CrashSceneOfficer4 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_BEN

- Ben:: Think he's our guy?
+ [::Continue] 

- Luz:: It doesn't matter what I think. What matters is the evidence.
+ [::Continue] 

- Phone: Bzzzzt
+ [::Continue] 

- Phone: Stark Profile
+ [::Continue] 

//stark's profile appears

- Ben:: Holy cucamonga... Bryon Stark? THE Bryon Stark? 
+ [::Continue] 

- Luz:: That name sounds sort of familiar. 
+ [::Continue] 

- Ben:: Sort of familiar? He's a legend! Haven't you seen West of Eden? Colossal?  
+ [::Continue] 

- Luz:: I don't watch movies. Too busy.
+ [::Continue] 

- Ben:: Who doesn't watch movies?!
+ [::Continue] 

- Luz:: Focus, Romero. We need to handle this quickly and quietly.
+ [::Continue] 

- Luz:: Forget about movies. I'll inspect the cars. You track down the families.
+ [::Continue] 

- Ben:: Okay...
+ [::Continue] 
~talkedToOfficer = true
-> END

=== CrashSceneOfficer5 ===
~leftSpeaker = SPEAKER_LUZ
~rightSpeaker = SPEAKER_OFFICER
Officer:: I think you still need to find some more clues
+ [::Continue] 
-> END