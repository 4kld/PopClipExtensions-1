Kelserj's PopClip Extension
=================

### ConLinkMD Contact to Link in Markdown
This extension will allow you to select a name within an editable document and search the contacts app for a match. It will replace the name with a link to the contact in Markdown format. 

### To Use
Select a name and then click on the popclip icon for ConLinkMD. The name can be as simple as John will search both the FirstName and LastName fields and return a combined list for multiple hits.
 
A more formal John Smith will parse the two into FirstName and LastName and search. 

A failure to match will present a dialog box. 

Multiple hits will present a selection list. Select one of the results and the link will be returned. 

ex: The selected text John Smith will be replaced with [John Smith](addressbook://13927437-BB95-4C93-B8B6-F9D2764AF9BC:ABPerson)

Wildcards are not supported however, the search assumes a "begin with" logic so John S is as if you were searching for John* S*. If you have only one John that has a last name that begins with S the link will be returned. If you have multiple combinations (Johnny Smith, John Smith, John Shapiro) they will all be returned. Jonathan Ive will not :-)

### Why?
I wrote this so I could attach contacts to my notes and project tracking documents. This allows me to quickly convert "Get with John S to discuss the migration plan", into "Get with [John Smith](addressbook://13927437-BB95-4C93-B8B6-F9D2764AF9BC:ABPerson) about the migration plan". 

The link allows me to consistently search for John Smith in my 
documents as well as have quick access to their current contact information. 

### Installation

To install just double-click on the `.popclipext` bundle.


### Known Issues
#### ABPerson
The name of the ABPerson link appears to be machine specific so the link may not work across several machines. The link to John Smith is addressbook://13927437-BB95-4C93-B8B6-F9D2764AF9BC:ABPerson and may not be the same card on another machine. I have not had a chance to check this out via icloud syncing. 

#### First and Last Names
The search only looks at the first and last name fields.  The middle name is ignored. Selecting Sally A Smith will search for Sally* A*. 

####Same Names
A search result with the same names will only take the first one. If you work for a homicide department and have many John Doe's it will always grab the first one. 

#### Tested
I have tested this with [Folding Text](http://www.foldingtext.com) and [TextMate](http://www.github.com/textmate/textmate) and should work with any editor. 

### Made with 
This is an Applescript based popclip extension. 

### Thanks!
I touched so many sites about applescript and the Contacts app that I just want to say thanks to everyone that has contributed to  the sources of applescript and popclip expertise. 
