#!/bin/bash
osascript -e 'tell application "Xcode"
	set currentActiveDocument to document 1 whose name ends with (word -1 of (get name of window 1))
	set currentActiveDocumentPath to path of currentActiveDocument
--	set	currentInsertionPoint to selected character range of currentActiveDocument
--	set output to ("Song: " & song & " - " & artist & " - " & album)
--	do shell script "echo " & quoted form of output

	tell application "Emacs"
		activate
		open currentActiveDocumentPath
	end tell

end tell'
