#!/bin/bash
osascript -e 'tell application "Xcode"
	set windowName to get name of window 1
	set windowNameWordCount to count of words of windowName
	set currentActiveDocumentName to (word -1 of windowName)
	if (currentActiveDocumentName is equal to "Edited")
    	set currentActiveDocumentName to (word -2 of windowName)
	end if
--    display alert windowNameWordCount
--    display alert (word -1 of windowName)
	set currentActiveDocument to document 1 whose name ends with currentActiveDocumentName
	set currentActiveDocumentPath to path of currentActiveDocument
--	set	currentInsertionPoint to selected character range of currentActiveDocument
--	set output to ("Song: " & song & " - " & artist & " - " & album)
--	do shell script "echo " & quoted form of output

	tell application "Emacs"
		activate
		open currentActiveDocumentPath
	end tell

end tell'
