:: 2 ways to run commands:
:: interactive mode - interacts with user for input
:: batch mode (silent mode) - decides itself

echo off
echo hello world
pause

:: echo:
:: used to print text to the screen
:: echo with no arguments will return ON or OFF depending if echoing back commands is ON
:: use @echo off to turn of this feature
@echo off

::pause:
::pauses execution and waits for user to proceed

::2 types of commands run from command prompt
::internal commands - commands that come with the OS
::external commands that come with external programs - usually only work with run prompt


::Batch Operators:
::Operators:                           Description:
::()							       Grouping
::! ~ - 						       unary Operators
::* / % + -						       arithmetic
::<< >> < >						       logical shift and redirection
::& 							       bitwise &
::^								       bitwise xor
::|   							       bitwise or
::= *= /= %= += -= &= ^= |= <<= >>=    assignment
::,									   seperator
::&&								   for using multiple commands
::||                                   for using one of multiple commands

::To use arithmetic operators use set /a
set /A 6+5
::set:
::Used to set, display or remove environment variables
::just using set will display all environment variables
::Otherwise used as set variable=string
::will set errorlevel to 1 if variable name is not found in current environment
::/a siwthc performs operations, so expression to right of equal sign is to be evaluated
::/p allows variable to be set to user input:
set /p variable=[promptstring]


::You can use redirection to send data to another place, like a file
echo text > text.txt

::When typing directory names, you can use ~ to shorten them:
cd C:\Docume~1\Cyb3rc~1\locals~1\Temp
::Can be used after 6 consecutive characters of a directory name. Must be followed by a 1

::&& executes multiple commands on the same line
echo Hi && echo hello

::Pipelining passes output of one command as input for another
::For example when deleting a file, batch will prompt for user input to confirm deletion
::You can supply that input automatically with a Pipeline
echo Y | del *.txt
::so the output of echo is passed to del

::del:
::deletes one or more files. erase command also does the same thing
::/p - prompts for confirm before each file
::/f - forces delete of read-only files
::/s - delete specified file from all subdirectories
::/q - quiet mode, doesnt ask to delete global wildcard
::/a - selects files to delete based on attribute


::subcommands
::used to narrow down results of the main command
net users
::net is the main command
::users is the subcommands
::switches can help determine specific command function
:: command line arguments are passed into the command. Can be accessed within a command
:: with %n% where n is a number from 0 to 9. %0% refers to the filename of .bat file


::help:
::displays information about command. Can also use /? switch

:: you can write comments with either the rem command or by using ::

::You can use the "color" command to set the console color
color 02
::this sets a black background with green text. color with no arguments returns the color to default

::title sets the title of the command prompt
title string

::prompt sets the prompt indicator

::cls clears the console text

::date and time commands can be used to display and change the date and time respectively

::start can be used to start an application and assign priorities to different applications
::Specifically it starts a new window to execute a specified program or command
::Normal argument in front of swtiches sets the title of the window
start "New_window"
::Uses the following switches:
::/D path - specifies path to starting directory
::/B - doesn't create a new window to execute command
::/I - uses original cmd environment, not the current environment
::/min /max for window display options
::/Seperate /shared for different memory options
::/low /normal /high /realtime /abovenormal /belownormal for different priority options
::/wait to wait for program to terminate before finishing instruction
::There are also some more specialized options
::After this you pass the command or program path, and the parameters to this program


:::exit - terminates a program or batch file
::/b closes the running batchscript as opposed to cmd.exe. If a number is specified after this it sets the ERRORLEVEL to that number

::call is used to call one batch file from another.
::Batch file parameter substitution can be used

::tasklist can be used to display the currently running tasks on a machine. 
::It can be called with various parameters that filter the output
::and let you get the tasklist for specific utilities.

::label can be used to create change or delete volume labels on the disk

::tree can be used for a graphical representation of the folder structure of a drive or path
::/f display all the names of files in each folder
::/a use only ASCII characters

::ver displays the windows version of the current OS

::type displays the contetns of a file (similar to cat)

::shift can be used to shift the position of a parameter by one position
shift /2 
:: this would shift the %3 to %2, %4 to %3, etc

::pauses - pauses the batch program

::convert can be used to convert volumes from FAT to NTFS & other formats.

::shutdown will shut the machine down
::-a aborts a pending shutdown
::-s specifies the machine to shut down
::-r reboots the machine
::-l logs off the user
::-t specifies the time to wait before shutting down
::-c will display a propt that comes with shutdown
::-I will open a remote shutdown dialog box. To shutdown remote computers without a gui, use the /m switch and specify the IP
::-f forcefully terminates all programs

::at command - used to be for scheduling tasks - now deprecated



::environment variables are set by OS, or other applications - used to
::reduce code complexity - used as variable placeholders
::can be set with <set>


::Can loop in batch using either goto or for
::for command - used for looping
::/D - loop through several directories
::/R - loop through directories and subdirectories
::/L - loop through a range of numbers
::/F - loop through a wide variaty of files, commands, or strings

::Can also use substitution of variable references
::%~I - expands %I removing any surrounding quotes
::%~fI - expands %I to a fully qualified path name
::%~dI - expands to drive letter only
::%~pI - expands to path only
::%~nI - expands to filename only
::%~xI - expands to file extension only
::%~sI - expands to short-names only path
::%~aI - expands %I to file attributes of file
::%~tI - expands %I to date/time of file
::%~zI - expands %I to size of file
::%~$PATH:I - searches directories in PATH and expands %I to fully qualified name of first found. If none, expands to empty string
::%~dpI - expands to drive letter and path only
::%~nxI - expands to file name and extension only
::%~fsl - expands to full path name with short-names only
::%~dp$PATH:I - searches PATH for %I and expands drive letter and path of first found
::%~ftzal - expands %I to DIR output line

for /d %v in (*.*) do dir/s "%v"
::displays all directores 
::In a batch file all variables have to be preceeded with %% instead of %
for /d %%v in (*.*) do dir/s "%%v"

for /r C:\Windows\Prefetch %v in (*.pf) do del %v
::deletes all prefetch files in C:\Windows\Prefetch
for /l %%VV in (1,1,20) do telnet %1 %%v
::looks for ports and tries to telnet to the port needs user supplied ip address as %1
::(1,1,20) is an increment of 1 starting from 1 to 20
for /l in %G in (20, -2, 0) do echo %G
::loops from 20 to 0 with increments of -2

::/f switch has extra options
::eol=c - specifies the end of line character
::skip=n - skips n lines at beginning of file
::delims=xxx - specifies specific delimiter set to replace default set of space and tab
::tokens=x,y,m-n - specifies tokens to be be passed to body of for loop from the line
::usebackq - specifies new schematics are in force, allowing some extra commands
for /f "tokens=*" %v in ('dir/b^c"c:\a^"') do echo %v
::displays all directries and files in C:\a
for /f