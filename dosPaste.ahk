;
; Overwrite Ctrl-V (paste) for DOS Boxes
;
#NoEnv
#IfWinActive, ahk_class ConsoleWindowClass
^v:: Click right 50, 50