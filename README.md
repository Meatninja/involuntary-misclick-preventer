# involuntary-misclick-preventer
Prevent misclicks in application of your choice by requiring double clicks.

Installation:
1. Download and install AutoHotkey v1.1.x: https://www.autohotkey.com/
2. Download and run involuntary-misclick-preventer.ahk

By default this script prevents accidental left clicks and right clicks in the game XCOM 2: War of the Chosen.
If you want it to work with a different program, replace "XCOM 2: War of the Chosen" with the name of the window of the program you're using. This needs to be done in the line "#IfWinActive, XCOM 2: War of the Chosen" in the hotkeys section of the script.

Max time between clicks can be configured at the top of the script, via the variables maxTimeBetweenLeftClicks and maxTimeBetweenRightClicks - set them to whatever time (in milliseconds) is comfortable for you. Default is 400 for both.

If something goes horribly wrong, you can always exit the script by pressing Ctrl + Shift + Alt + E.
