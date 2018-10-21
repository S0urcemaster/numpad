﻿init3x3Grid() {
	global grid_color
	col := grid_color
	Gui, 91: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 91: Color, % col
	Gui, 92: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 92: Color, % col
	Gui, 93: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 93: Color, % col
	Gui, 94: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 94: Color, % col
	Gui, 95: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 95: Color, % col
	Gui, 96: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 96: Color, % col
	Gui, 97: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 97: Color, % col
	Gui, 98: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 98: Color, % col
}

show3x3Grid(x, y, w, h, t) {
	hstep := h/3
	vstep := w/3
	Gui, 91: Show, % "x" x " y" y " w" w " h" t " NA", Horizontal 1
	Gui, 92: Show, % "x" x " y" y+hstep " w" w " h" t " NA", Horizontal 2
	Gui, 93: Show, % "x" x " y" y+hstep*2 " w" w " h" t " NA", Horizontal 3
	Gui, 94: Show, % "x" x " y" y+hstep*3-1 " w" w " h" t " NA", Horizontal 4
	Gui, 95: Show, % "x" x " y" y " w" t " h" h " NA", Vertical 1
	Gui, 96: Show, % "x" x+vstep " y" y " w" t " h" h " NA", Vertical 2
	Gui, 97: Show, % "x" x+vstep*2 " y" y " w" t " h" h " NA", Vertical 3
	Gui, 98: Show, % "x" x+vstep*3-1 " y" y " w" t " h" h " NA", Vertical 4
}

hide3x3Grid() {
	Loop, 8
		Gui, % A_Index + 90 ":  Hide"
}


/*
	Box_Init - Creates the necessary GUIs.
	
	C - The color of the box.
*/

Box_Init(C="FF0000") {
	Gui, 96: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 96: Color, % C
	Gui, 97: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 97: Color, % C
	Gui, 98: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 98: Color, % C
	Gui, 99: +ToolWindow -Caption +AlwaysOnTop +LastFound
	Gui, 99: Color, % C
}

/*
	Box_Draw - Draws a box on the screen using 4 GUIs.
	
	X - The X coord.
	
	Y - The Y coord.
	
	W - The width of the box.
	
	H - The height of the box.
	
	T - The thickness of the borders.
	
	O - The offset. O - Outside. C - Centered. I - Inside.
*/

Box_Draw(X, Y, W, H, T="1", O="I") {
	If(W < 0)
		X += W, W *= -1
	If(H < 0)
		Y += H, H *= -1
	If(T >= 2)
	{
		If(O == "O")
			X -= T, Y -= T, W += T, H += T
		If(O == "C")
			X -= T / 2, Y -= T / 2
		If(O == "I")
			W -= T, H -= T
	}
	Gui, 96: Show, % "x" X " y" Y " w" W " h" T " NA", Horizontal 1
	Gui, 98: Show, % "x" X " y" Y + H " w" W " h" T " NA", Horizontal 2
	Gui, 97: Show, % "x" X " y" Y " w" T " h" H " NA", Vertical 1
	Gui, 99: Show, % "x" X + W " y" Y " w" T " h" H " NA", Vertical 2
}

/*
	Box_Destroy - Destoyes the 4 GUIs.
*/

Box_Destroy() {
	Loop, 4
		Gui, % A_Index + 95 ":  Destroy"
}

/*
	Box_Hide - Hides the 4 GUIs.
*/

Box_Hide() {
	Loop, 4
		Gui, % A_Index + 95 ":  Hide"
}