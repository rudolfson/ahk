;
; Common string operations
;
#NoEnv
; convert selected text to upper/lower case, depending on first character
^!+u::
clipboard =
SendInput ^c
ClipWait
StringLeft, first, clipboard, 1
if first is lower
	StringUpper clipboard , clipboard
else 
	StringLower clipboard , clipboard
SendInput ^v
return

; convert "\" to "/" and vice versa in selected text, depending if "\" is found
^!/::
clipboard =
SendInput ^c
ClipWait
if InStr(clipboard, "\") > 0
	StringReplace clipboard , clipboard , \, /, All
else
	StringReplace clipboard , clipboard , /, \, All
SendInput ^v
return

; convert tabs to spaces
^!+Tab::
clipboard =
SendInput ^c
ClipWait
str = %clipboard%
InputBox, tablen, Tabs to Spaces, Anzahl Blanks für ein Tab, , , , , , , , 4
if ErrorLevel
{
	return
}
if tablen is not integer
{
	MsgBox, %tablen% no int entered
	return
}
	
tabrep = 
loop %tablen%
	tabrep .= " "
loop
{    ;it only replaces one level of tabs at a time, so loop to get them all
	str := RegExReplace( str, "m)^( *)\t", "$1" . tabrep, lRep )
	if !lRep
		break
}
clipboard = %str%
SendInput ^v
return
