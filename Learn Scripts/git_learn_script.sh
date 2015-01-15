#setup for git

git config --system   #edits then /etc/gitconfig file - global settings for all users and repos
git config --global   #edits user settings for a specific user
git config     #edits a particular repo's git settings

#some git config settings:
git config --global user.name "Jane Doe"
git config --global user.email janedoe@compnay.com

# core.editor and merge.tool set the default text editor and merge tool respectively
git config --list   #lists all git config settings

git config {key}  #checks the value of a specific key



#git help

git help <verb>
git <verb> --help
man git-<verb>



#initialize a repo
git init


#add files to staging area
git add <file>

#ex:
git add *.c
git add README


#to commit use:
git commit -m <message>

#ex:
git commit -m 'initial project version'


# to clone a repo, use:
git clone
# can also use with a url:
git clone [url]
#ex:
git clone git://github.com/schacon/grit.git
#or
git clone git://github.com/schacon/grit.git mygrit



#to determine the status of files
git status

# to start tracking untracked files or to stage modified, tracked files, use
git add <file>



#.gitignore file rules:
#blank lines and files starting with # are ignored
#standard glob patterns work
#	*  matches 0+ characters
#	[abc] matches any character within brackets
#	? matches a single character
#	[0-9] matches any character in the range
#end patterns with a forward slash to specify a directory
#negate patterns by starting it with a !

#ex:
#comment - ignored
#ignore all .a files
*.a
#but track lib.a\
!lib.a
#only ignore root TODO file, not subdir/TODO
/TODO
#ignore all files in build/ directory
build/
#ignore doc/notes.txt but not doc/server/arch.txt
doc/*.txt
#ignore all .txt files in doc/ directory
doc/**/*.txt


#to check the differences between files that haven't been staged
git diff
git diff --cached shows what has been staged so far


#to commit use
git commit    #launches external editor to enter a message
git commit -m <message>   #adds message inline
git commit -a -m "message"   #adds all modified, tracked files to staging area, then commits with message



#to remove a file from tracked files and working directory use
git rm <file>
# to remove a modified, staged file in such a way, use
git rm -f <file>
# to remove a file from the staging area, but not the working directory:
gir rm --cached <file>


#renaming file
git mv file_from file_to