#Frame, Entry, Listbox
from tkinter import *

root = Tk()
root.geometry("200x250")

upFrame = Frame(root)
upFrame.pack()
downFrame = Frame(root)
downFrame.pack()

editBox = Entry(upFrame, width = 10)
editBox.pack(padx = 20, pady = 20)

listBox = Listbox(downFrame, bg='yellow')
listBox.pack()

listBox.insert(END, "Un")
listBox.insert(END, "Deux")
listBox.insert(END, "Trois")

root.mainloop()