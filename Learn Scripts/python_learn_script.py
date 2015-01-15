# This is a script that contains all the things given in code Academy

# to print things to the console use print <string> as in:
print "Welcome to Python!"
#you can also print formatted strings with:
total = 55.4
print("%.2f" % total)
# can also use .format to do this
print "I am a {type}".format(type="string")
print "Hello, my name is {name}".format(name=some_variable)

#python uses untyped variables, so to set a variable all you have to do is:
my_variable = 10
spam = 5

# to store boolean values, use the keywords True and False
my_int = 7
my_float = 1.23
my_bool = True

#reassigning values is the same as assigning them
my_int = 3

#you can also print variables:
print my_int

#instead of using braces, python uses whitespace:
def spam():
    eggs = 12
    return eggs
        
print spam()


""" 
	Triple quotes let you make multiline comments

"""

#Python supports arithmetic operators:
addition = 72 + 23
subtraction = 108 - 204
multiplication = 108 * 0.5
division = 108 / 9
eight = 2 ** 3      #exponentiation
mod = 3 % 2         #modulo operator


#you can also assign strings to variables
brian = "Always look on the bright side of life!"

#You can escape characters with a backslash
print 'There\'s a snake in my boot!'

#python strings are 0-indexed. Can be array-accessed
fifth_letter = "MONTY"[4]
strr = "MONTY"
fifth_letter_string = strr[4]
#To get a substring you can use array indexing:
onty = strr[1:4]
#or
onty = strr[1:len(strr)]
#if you are only eliminating the front characters of the string, you can ignore the second index:
onty = strr[1:]

#can use string methods to perform specific tasks
print len("Norwegian Blue")		# prints the length of the string
print "Norwegian Blue".lower()		#prints the string in all lower case letters
print "Norwegian Blue".upper()		#prints the string in all upper case letters
this_is_now_a_string = str(3.14)	#str turns non-strings into strings
this_is_now_a_string.isalpha()		#returns true if string only contains letters
#functions like len and str are general functions that can be used with other data types
#functions like lower and upper are member functions of strings and so can only used with strings - hence the dot notation

#can concatenate strings with
print "Spam " + "and " + "eggs"
#To combine a string with something that isn't a string, have to use explicit string conversion - str()
print "I have " + str(2) + " coconuts"

#to compare strings, you can just use ==
if "stuff" == "stuff":
	print "stuff"


#in python, can use single and double quotes interchangeably to declare strings. However, what starts a string has to finish a string so:
print ' Hello '
print " Hello "
#are valid - this lets you use the other types of quotes without escaping:
print ' "Hello" '

# if you want to continue the same code statement on the next line, you can use \ which is the continuation marker:
print "Ah, so your name is %s, your qust is %s, " \
"and your favorite color is %s." % (name, quest, color)




#can use date and time functions using the datetime library
#you can import it with
from datetime import datetime		#importing a module
#a module is a file containing definitions or variables and functions
# when importing a module as a whole, it is called a generic import:
import math
#to use this module's functions and variables, you use module_name.function_name()
print math.sqrt(25)
#You can also do a fucntion import. This loads the function definition into the namespace, so you don't have to use the module name first:
from math import sqrt
print sqrt(25)
#in the same way, we can import everything from a module with a universal import:
from math import *
print sqrt(25)
#You can get a list of everything in a module with:
everything = dir(math)

#to retrieve current date and time use:
print datetime.now()
#can print individual year, month, day etc. by calling fields of the result of datetime.now()
now = datetime.now()
print now.year
print now.month
print now.day



#python comparators are:
#==, !=, <, >, <=, >=

# to combine boolean expressions 
# use 'and' 'or' 'not' keywords

#not evaluated first, and is evaluated second, or is evaluated last - use parentheses to specify order of operation

# to make an if statement, do if <conditional> :
if answer == "Left":
	print "Right"

#can also run functions:
if some_function():
	print "stuff"

# can use else in the same way:
if 8 > 9:
	print "one"
else:
	print "two"
#finally, you can also have else if statments with elif syntax
if 8 > 9:
	print "one"
elif 8 < 9:
	print "two"
else:
	print "three"

# to get input from a user, use the raw input function:
variable = raw_input("prompt")


#define functions with:
def function_name():	#function header
	#do stuff
	return output

#functions can be defined in-line - before they are used.
#you can pass multiple arguments functions ex:
def biggest_number(*args):		#pass any number of arguments
	print max(args)

def abso(arg):		#pass single arg
	print abs(arg)

#some python functions: max, min, abs, type - returns the type of the variable passed 
print type(1)
print type(4.2342)
print type('234234')
def distance_from_zero(a):
    if (type(a) == int) or (type(a) == float):
        return abs(a)
    else:
        return "Nope"


def plane_ride_cost(city):
	if city == "Charlotte": 
		return 183
	elif city == "Tampa":
		return 220
	elif city == "Pittsburgh":
		return 222
	elif city == "Los Angeles":
		return 475
	else:
		return 99999999

#Python lists can store different data types
#to assign items to a list:
list_name = [item_1, item_2]
empty_list = []
#access using array index
print list_name[3]		#gets 4th element
#can also assign into index
list_name[2] = "some_var"
#can add items to list with append
list_name.append(variable)
#print a list will print out the list contents
print list_name
#you can get the length of the list with:
print len(list_name)
#to get a slice of a list use the same convention as the string
new_list = list_name[3:6] #gets elements starting at the first index, and continues getting elements until the second index. Does NOT get the second index element
# so first_index <= elemenets < second_index
#can ignore some indexes with:
list_name[:x]	#gets the first x elements
list_name[x:]   #gets all elements starting from index x
#can search for the index that contains an element with:
list_name.index("element")	#returns the first index that contains the word "element"
#can insert elements with
list_name.insert(1,"element")	#inserts "element" at index 1, shifting evething down
#you can sort lists with
list_name.sort()	#modifies list
#for strings will sort in alphabetical order. numbers sorts as normal
#to remove an item, use:
list_name.remove('item_value')
#you can remove an element from a list and have it returned to you with pop:
print list_name.pop(index)
#you can also remove an element at an index with del:
del(list_name[index])
#to have a list of lsits use: 
list_of_lists = [[1,2,3], [4,5,6]]
#can create lists of the same thing using:
print(["O"]*5)
#This will create and print a list of 5 Os



#dictionary is similar to a list, but values can be accessed by looking up a key
#declared with
dictionary = {'key1' : value1, 'key2' : value2, ...}
dictionary = {}   #empty dictionary
#access using:
dictionary['key2']
#add new key-value pairs:
dictionary['new_key'] = new_value  #can reassociate a key with a new value in the same way
#can put lists into dictionary
print len(dictionary) #returns number of key-value pairs
#you can delete key-value pairs with
del dictionary['key1']
#can access methods/values within dicitionary/list with the access method
#dictionarys are unordered, so looping through them doesn't guarantee a particular order
#if you use a for-in loop with a dictionary, you will go through the keys:
for key in dictionary:
	print dictionary[key]


#you can go through a range of numbers in a for loop with 
for i in range(0, n):
	#stuff
#range function creates a list from the first index to the last index (not including the last one)
#3 different iterations:
#range(stop) - range from 0 to stop with a step of 1
#range(start, stop) - range from start to stop with a step of 1
#range(start, stop, step) - range from start to stop with a step of step



#CLASSES
#to define a class, all you need to do is:
class class_name:
#you can also use inheritance with parentheses
class class_name(parent_class):
#usually have an init method:
#this will run when the object is created
	def __init__(self, *, **):		#self is implied, * = args and ** = kwargs (bad convention)
	def __init__(self, *args, **kwargs):	#args = any # of variables, kwargs = keyword arguments (dictionaries)
	#all of these names are not necessary, they are just convention. Could rename them as anything else