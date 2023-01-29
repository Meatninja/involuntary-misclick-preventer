#NoEnv
#Warn
#SingleInstance Force
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
SendMode Input
ListLines Off
Process, Priority, , A
SetBatchLines, -1
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1


timeOfLastLeftClick := -99999
timeOfCurLeftClick := -99999

timeOfLastRightClick := -99999
timeOfCurRightClick := -99999 

; ------------- user configurable variables start -------------

maxTimeBetweenLeftClicks := 400     ; in milliseconds
maxTimeBetweenRightClicks := 400    ; in milliseconds

; ------------- user configurable variables end -------------


return ; auto-execute section end


; ------------- hotkeys start -------------

#IfWinActive, XCOM 2: War of the Chosen

LButton::
; A_TickCount will misbehave if the system runs for more than 49.7 consecutive days
; this is an AHK limitation
timeOfCurLeftClick := A_TickCount
if(timeOfCurLeftClick - timeOfLastLeftClick <= maxTimeBetweenLeftClicks)
    MouseClick, Left
timeOfLastLeftClick := A_TickCount
return

RButton::
timeOfCurRightClick := A_TickCount
if(timeOfCurRightClick - timeOfLastRightClick <= maxTimeBetweenRightClicks)
    MouseClick, Right
timeOfLastRightClick := A_TickCount
return

#IfWinActive ; clear #IfWinActive, XCOM 2: War of the Chosen


^+!e::	; Ctrl + Shift + Alt + E for emergency Exit out of script
ExitApp
return

; ------------- hotkeys end -------------