from tkinter import *

root = Tk()

button1 = Button(root, text="SQL1")
button2 = Button(root, text="SQL2")
button3 = Button(root, text="SQL3")

button1.pack(side=TOP, fill=X, padx=10, pady=10)
button2.pack(side=TOP, fill=X, padx=10, pady=10)
button3.pack(side=TOP, fill=X, padx=10, pady=10)

root.mainloop()