#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


F8::Pause    ; F8 to pause the script
F9::Suspend  ; F9 to Suspend - wont stop spamming, will pause the sript after spamming (you can pause and then suspend, it will work)
F10::Reload   ; F10 to reload the script, everything done by the script will stop and restarted

^!9::  ;Ctrl+Alt+9

InputBox, howmany, How many messages to send, Please enter how many messages you wan't to send between 1 and 3 - write in text, ,290,200

if(howmany = "one")
{
	InputBox, messageone, Enter the 1st message, Please enter the first message you want to send, ,290,200
}

if(howmany = "two")
{
	InputBox, messageone, Enter the 1st message, Please enter the first message you want to send, ,290,200
	InputBox, messagetwo, Enter the 2nd message, Please enter the second message you want to send, ,290,200
}

if(howmany = "three")
{
	InputBox, messageone, Enter the 1st message, Please enter the first message you want to send, ,290,200
	InputBox, messagetwo, Enter the 2nd message, Please enter the second message you want to send, ,290,200
	InputBox, messagethree, Enter the 3rd message, Please enter the third message you want to send, ,290,200
}

MsgBox, You chose to send %howmany% messages

;Name-------------------------------------------------------
if(howmany = "one")
{
	Run, https://wa.me/PhoneNumberWithCountryCodeWithoutThePlusButton?text=%messageone%
	Sleep, 3000
	SendInput {Return}
	Sleep, 2000
}
if(howmany = "two")
{
	Run, https://wa.me/PhoneNumberWithCountryCodeWithoutThePlusButton?text=%messageone%
	Sleep, 3000
	SendInput {Return}
	Sleep, 2000
	Run, https://wa.me/PhoneNumberWithCountryCodeWithoutThePlusButton?text=%messagetwo%
	Sleep, 3000
	SendInput {Return}
	Sleep, 2000
}
if(howmany = "three")
{
	Run, https://wa.me/PhoneNumberWithCountryCodeWithoutThePlusButton?text=%messageone%
	Sleep, 3000
	SendInput {Return}
	Sleep, 2000
	Run, https://wa.me/PhoneNumberWithCountryCodeWithoutThePlusButton?text=%messagetwo%
	Sleep, 3000
	SendInput {Return}
	Sleep, 2000
	Run, https://wa.me/PhoneNumberWithCountryCodeWithoutThePlusButton?text=%messagethree%
	Sleep, 3000
	SendInput {Return}
	Sleep, 2000
}
