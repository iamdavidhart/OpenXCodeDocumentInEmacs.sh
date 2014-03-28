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

	set	currentSelectionRange to selected character range of currentActiveDocument
	set	currentInsertionPoint to item 1 of currentSelectionRange
--    display alert currentInsertionPoint

	tell application "Emacs"
		activate
		open currentActiveDocumentPath
	end tell

end tell'
