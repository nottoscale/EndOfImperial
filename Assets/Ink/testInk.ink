INCLUDE testLoop.ink
EXTERNAL debug(message)
EXTERNAL changeScene(message)
EXTERNAL presentEvidence(submitKnotName)
EXTERNAL correctEvidence(noParam)

VAR test2 = 6
VAR boolTest = false
LIST listTest = red, orange, yellow, green, blue
VAR currentColor = red
VAR submittedEvidence = ""

VAR canGoToHospital = false

Make your choices... 
 
 + [Test Option] it works
 + Change scenes -> TestKnot
 #  ~ changeScene("test")

- Stuff down here {test2}
 ~ test2++
 + Continue {test2}
    -> END


=== TestKnot ===
I'm sorry your princess is in another castle.
~ test2++
 + Continue {test2}
 -> DONE
 
 
=== TestKnot2 ===
THIS IS YET ANOTHER KNOT {boolTest}
~ boolTest = !boolTest
 + Continue
 -> DONE
 
 === TestKnot3 ===
List Knot {currentColor}
~ currentColor++
 + Continue
 -> DONE
 
=== TestKnot4 ===
THIS IS TEST 4 KNOT{boolTest}
~ boolTest = !boolTest
 + Continue
 -> DONE
 
 === TestKnot5 ===
Make your choices... 
 
 + [Test Option] it works
 + Change scenes -> TestKnot
 #  ~ changeScene("test")

- Stuff down here {test2}
 ~ test2++
 + Continue {test2}
    -> END
    
=== TestPresent ===
Time to present
 + [::Continue]
 ~ presentEvidence("PresentSubmit")
 -> DONE
 
=== PresentSubmit ===
TEST {submittedEvidence}
{ submittedEvidence == "testCorrect":
    ~ correctEvidence("")
    -> CorrectSubmission
- else:
    -> WrongSubmission
}
-> DONE

=== WrongSubmission ===
That is wrong! dadfasfsafd
+ [::Continue]
-> DONE

=== CorrectSubmission ===
You did it!
+ [::Continue]
->DONE