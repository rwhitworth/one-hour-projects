# Trivia Crack Cheat

This script can be added to <a href="http://www.telerik.com/fiddler">Fiddler</a> to allow cheating on normal questions (not questions for 'crowns' or 'points').

When starting a game the question AND answers are pre-downloaded.  The category is selected for the user before the round begins or the spin happens.  This number is then poppup up in Fiddler via a MessageBox.  1 = select first answer, 4 = select last answer.

Requirements
* HTTPS inspection must be enabled for this to work.  Tools -> Fiddler Options -> HTTPS.  In this menu select 'Capture HTTPS CONNECTs' and 'Decrypt HTTPS traffic'.
* This code must be inserted into the 'FiddlerScript' tab in the function OnBeforeResponse.  And the MessageBox blocks further execution, so you must click 'OK' before the game continues.
* The FaceBook version of Trivia Crack must be used.  Proxying traffic from your phone probably won't work.

# This project is just a proof of concept.. as I don't play this game normally.
