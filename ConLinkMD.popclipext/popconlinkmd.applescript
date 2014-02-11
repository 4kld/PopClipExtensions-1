--set searchName to "John "
set searchName to "{popclip text}"

set nameCount to count of words of searchName

set listOfNames to {}

tell application "System Events"
	set _appName to name of the first process whose frontmost is true
end tell
tell application "Contacts"
	if nameCount = 0 then
		
	else if nameCount = 1 then
		
		set {lastName} to words of searchName
		set {firstName} to words of searchName
		set thePeople to every person whose first name begins with firstName or last name begins with lastName
		
	else if nameCount = 2 then
		set {firstName, lastName} to words of searchName
		set thePeople to every person whose first name begins with firstName and last name begins with lastName
	end if
	
	set theCount to count of thePeople
end tell
if theCount = 0 then
	tell application _appName
		display dialog "There is not match for " & searchName & " in your Address Book."
	end tell
else if theCount = 1 then
	tell application "Contacts"
		set firstName to the first name of (item 1 of thePeople)
		set lastName to the last name of (item 1 of thePeople)
		set personID to the id of (item 1 of thePeople)
		set theResult to "[" & firstName & " " & lastName & "](addressbook://" & personID & ")" & return
		set the clipboard to text 1 thru -2 of theResult as text
	end tell
	tell application "System Events"
		keystroke "v" using {command down}
	end tell
else if theCount > 1 then
	tell application "Contacts"
		repeat with currentPerson in thePeople
			set lastName to the last name of currentPerson
			set firstName to the first name of currentPerson
			copy firstName & " " & lastName to end of listOfNames
		end repeat
	end tell
	activate application _appName
	choose from list listOfNames
	tell application "Contacts"
		set listResult to result as text
		set {fName, lName} to words of listResult
		set thePeople to every person whose first name = fName and last name = lName
		set firstName to the first name of (item 1 of thePeople)
		set lastName to the last name of (item 1 of thePeople)
		set personID to the id of (item 1 of thePeople)
		set theResult to "[" & firstName & " " & lastName & "](addressbook://" & personID & ")" & return
		set the clipboard to text 1 thru -2 of theResult as text
	end tell
	activate application _appName
	tell application "System Events"
		keystroke "v" using {command down}
	end tell
	
	
end if


