;

FourFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_LETTERS)
}
else if(layer = LAYER_MOUSE) {
	mouseAccel := 0.9
	SetTimer,mouseLeftTimer,10
	KeyWait,Numpad4
	SetTimer,mouseLeftTimer,Off
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGrid4()
}
else if(layer = LAYER_CURSOR) {
	Send {Left}
}
else if(layer = LAYER_LETTERS) {
	SendKey("d")
}
else if(layer = LAYER_LETTERS1) {
	SendKey("m")
}
else if(layer = LAYER_LETTERS2) {
	SendKey("v")
}
else if(layer = LAYER_NUMBERS) {
	Send {4}
}
else if(layer = LAYER_SIGNS) {
	Send {.}
}
else if(layer = LAYER_SIGNS1) {
	Send {(}
}
else if(layer = LAYER_FKEYS) {
	Send {F4}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	SendRawKey("Left")
}
else if(layer = LAYER_MOVEGUI) {
	fourAccel := 0.5
	SetTimer,fourTimer,10
	KeyWait,Numpad4
	SetTimer,fourTimer,Off
}

return

fourTimer:
guix -= 1 *fourAccel
Gui,Show,x%guix%
if(fourAccel < max_mouse_speed) {
	fourAccel *= mouse_acceleration
}
return

mouseLeftTimer:
MouseGetPos,mousex,mousey
mousex -= 1 *mouseAccel
MouseMove,mousex,mousey,mouse_speed
if(mouseAccel < max_mouse_speed) {
	mouseAccel *= mouse_acceleration
}
return