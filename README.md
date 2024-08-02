# MyLinuxScripts

just created this repo for saving my own bash/shell script on here for backup
and for some other purpose, dont dig deep, thats it

Scripts and usage:
----------------------------------------------------------
	notes-saver.sh:

usage : 
[root@l4feer]$ ./notes-saver.sh "helo
there"
	or

[root@l4feer]$ sh notes-saver.sh "hello
here are the notes with multiple line, by just manipulating with double quotes"

####Description :
            It stores the message/notes under double quotes, which should be passed on commandline <just after the command>,
            it creates a new file named notes.txt, otherwise if there already, it just append the message/notes with date time
----------------------------------------------------------
	Safe File Deleter:

usage :

[root@l4feer]$ python3 safe-file-del.py

		or

[root@l4feer]$ ./safe-file-del.py


####Description :
	    This script is used to delete files in current directory with shred,
	    Using shred before deleting so that no one can read the content inside the deleted file
			Even the recover with some other technology!
	    Be careful while running this script, otherwise u will lose your own files which might be a important stuff

---------------------------------------------------------
