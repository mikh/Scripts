import sys, os

def load_link(linkname):
	lines = []
	entries = {}
	with open(linkname, 'r') as f:
		lines = f.readlines()
	for l in lines:
		l = l.strip()
		if len(l) > 0:
			if l[0] != '#':
				vals = l.split('$')
				vals[0] = vals[0].strip()
				if vals[0] in entries:
					print("WARNING - link.txt has multiple entries for key " + vals[0])
				entries[vals[0]] = [vals[1].strip(), vals[2].strip()]
	return entries


d = load_link("link.txt")
key = sys.argv[1]
if not key in d:
	print("ERROR Entry " + key + " not found")
	input("")
else:
	out = d[key]
	t = out[0]
	val = out[1]

	if t == 'exe':
		os.system("start /b \"\" " + val)
	elif t == 'loc':
		os.system("%SystemRoot%\\explorer.exe " + val)
	elif t == 'spec':
		os.system(val)
	else:
		print("ERROR - unrecognized command type")
		input("")
