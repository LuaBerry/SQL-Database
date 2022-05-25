from tkinter import *

root = Tk()
root.geometry("300x100")

label1 = Label(root, text="SQL is")
label2 = Label(root, text="EASY", font=("Times New Roman", 30), bg="blue", fg="yellow")

label1.pack()
label2.pack()

root.mainloop()
