;
; Convert selected text  to upper case
;
#NoEnv
#t::
clipboard =
SendInput ^c
ClipWait
Run http://dict.leo.org/ende?lp=ende&lang=de&searchLoc=0&cmpType=relaxed&sectHdr=on&spellToler=on&chinese=both&pinyin=diacritic&search=%clipboard%&relink=on
return