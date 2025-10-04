import tkinter as tk
import itertools

ASCII_ART = r"""
                            ,--.          
                           {    }         
                           K,   }         
                          /  ~Y`          
                     ,   /   /            
                    {_'-K.__/             
                      `/-.__L._           
                      /  ' /`\_}          
                     /  ' /               
             ____   /  ' /                
      ,-'~~~~    ~~/  ' /_                
    ,'             ``~~~  ',              
   (                        Y             
  {                         I             
 {      -                    `,           
 |       ',                   )           
 |        |   ,..__      __. Y            
 |    .,_./  Y ' / ^Y   J   )|            
 \           |' /   |   |   ||            
  \          L_/    . _ (_,.'(            
   \,   ,      ^^""' / |      )           
     \_  \          /,L]     /            
       '-_~-,       ` `   ./`             
          `'{_            )               
              ^^\..___,.--`               
                 
Y O U   H A V E   B E E N   H A C K E D !
"""

COLORS = ["#00ff00", "#ff0000", "#00ffff", "#ffff00"]
FONT = ("Courier", 18, "bold")
PADX = 24
PADY = 18
FLASH_INTERVAL = 200

def main():
    root = tk.Tk()
    root.overrideredirect(True)
    root.attributes("-topmost", True)
    bg_color = "black"
    root.configure(bg=bg_color)

    frame = tk.Frame(root, bg=bg_color)
    frame.pack(padx=PADX, pady=PADY)

    label = tk.Label(frame, text=ASCII_ART, font=FONT, fg=COLORS[0],
                     bg=bg_color, justify="center")
    label.pack()

    root.update_idletasks()

    w = root.winfo_width()
    h = root.winfo_height()
    sw = root.winfo_screenwidth()
    sh = root.winfo_screenheight()
    x = (sw - w) // 2
    y = (sh - h) // 2
    root.geometry(f"{w}x{h}+{x}+{y}")

    def close(event=None):
        root.destroy()
    root.bind("<Escape>", close)
    root.bind("<Button-3>", close)

    colors = itertools.cycle(COLORS)
    def flash():
        c = next(colors)
        label.config(fg=c)
        root.after(FLASH_INTERVAL, flash)
    root.after(100, flash)

    root.mainloop()

if __name__ == "__main__":
    main()
