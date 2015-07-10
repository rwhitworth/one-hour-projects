# Trivia Crack Cheat

This script can be added to <a href="http://www.telerik.com/fiddler">Fiddler</a> to allow cheating on normal questions (not questions for 'crowns' or 'points').

When starting a game the question AND answers are pre-downloaded.  The category is selected for the user before the round begins or the spin happens.  This number is then poppup up in Fiddler via a MessageBox.  1 = select first answer, 4 = select last answer.

Requirements
* HTTPS inspection must be enabled for this to work.  Tools -> Fiddler Options -> HTTPS.  In this menu select 'Capture HTTPS CONNECTs' and 'Decrypt HTTPS traffic'.
* This code must be inserted into the 'FiddlerScript' tab in the function OnBeforeResponse.  And the MessageBox blocks further execution, so you must click 'OK' before the game continues.
* The FaceBook version of Trivia Crack must be used.  Proxying traffic from your phone probably won't work.

# Contents
* fiddler.cs - The 1 hour version of the script which uses pop-ups, that block HTTP traffic, for notification.  Support for normal questions only.
* fiddler-2hours.cs - The 2 hour version of the script which uses the 'custom' column in Fiddler to display the information.  Support for normal and crown questions.
* fiddler-2hours.png - Example output from a test run of the script.  Changes were still being made when this screenshot was taken.  Blank lines in the custom field were removed toward the end of development.

# This project is just a proof of concept.  I do not condone cheating, but I do enjoy a good puzzle.

