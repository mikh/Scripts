import tkinter as tk

LARGE_FONT= ("Verdana", 12)

class SeaofBTCapp(tk.Tk):
	def __init(self, *args, **kwargs):
		tk.Tk.__init__(self, *args, **kwargs) #initialize the tkinter class
		container = tk.Frame(self)	#frame of the app (window)

		#2 ways to add stuff into frame
		#pack just throws everything into the frame - can't really organize anything
		container.pack(side="top", fill="both", expand=True) #side is the side to throw stuff, fill fills the entire space alloted, expand will expand the alloted space to cover any remaining whitespace

		container.grid_rowconfigure(0, weight=1)	# 0 = minimum size, weight is priority
		container.grid_columnconfigure(0,weight=1)

		self.frames = {}	#defines dictionary

		frame = StartPage(container, self)

		self.frames[StartPage] = frame

		#grid is the other way to add stuff, give the (row, column) of location conforms to defined places, so dont need to predefine
		frame.grid(row=0, column=0, sticky="nsew")	#sticky is the directions to align stuff, stands for north-south-east-west which stretches to the whole frame

		self.show_frame(StartPage)

	def show_frame(self, cont):
		frame = self.frames[cont]
		frame.tkraise()	#raises frame is moved to the front

class StartPage(tk.Frame):

	def __init__(self, parent, controller):
		tk.Frame.__init__(self, parent)
		label = tk.Label(text="Start page") #adds text to tkinter window
		label.pack(pady=10,padx=10) #adds padding to label


app = SeaofBTCapp()
app.mainloop()	#runs tkinter code
print("gogogo")