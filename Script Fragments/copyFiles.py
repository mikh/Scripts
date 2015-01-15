#!/usr/bin/python
import sys, getopt, os

usage = "Usage: %s [-d start_directory] [-c copy_directory] [-p file_pattern] [-k (keep subfolder)]" % sys.argv[0]

myopts, args = getopt.getopt(sys.argv[1:], "d:c:p:k:")

directory = os.getcwd()
copy_directory = os.getcwd()
pattern = '*'
keep = False


for o, a in myopts:
	if o == '-d':
		directory = a
	elif o == '-p':
		pattern = a
	elif o == '-k':
		keep = True
	elif o == '-c':
		copy_directory = a
	else:
		print(usage)

print(directory)
print(copy_directory)
print(pattern)
print(keep)
