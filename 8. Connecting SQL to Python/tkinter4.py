from tkinter import *
from tkinter import messagebox

def clickButton():
    messagebox.showinfo('Button Clicked!', 'You pushed the button.')

root = Tk()
root.geometry("200x200")

button1 = Button(root, text="Click Here", fg="red", bg="yellow", command=clickButton)

button1.pack(expand = 1)

root.mainloop()
