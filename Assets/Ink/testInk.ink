INCLUDE testLoop.ink
EXTERNAL debug(message)
EXTERNAL changeScene(message)
VAR test2 = 6

Make your choices... 
 
 * [Test Option] it works
 * Change scenes -> TestKnot
 #  ~ changeScene("test")

- Stuff down here {test2}
 ~ test2++
 * Continue {test2}
    -> END


=== TestKnot ===
I'm sorry your princess is in another castle.
~ test2++
 + Continue {test2}
 -> DONE
 
 
=== TestKnot2 ===
THIS IS YET ANOTHER KNOT
 + Continue
 -> DONE