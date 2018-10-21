;

FiveFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_LETTERS1)
}
else if(layer = LAYER_MOUSE) {
	mouseAccel := 0.9
	SetTimer,mouseDownTimer,10
	KeyWait,Numpad5
	SetTimer,mouseDownTimer,Off
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGrid5()
}
else if(layer = LAYER_CURSOR) {
	Send {Down}
}
else if(layer = LAYER_LETTERS) {
	SendKey("e")
}
else if(layer = LAYER_LETTERS1) {
	SendKey("n")
}
else if(layer = LAYER_LETTERS2) {
	SendKey("w")
}
else if(layer = LAYER_NUMBERS) {
	Send {5}
}
else if(layer = LAYER_SIGNS) {
	Send {,}
}
else if(layer = LAYER_SIGNS1) {
	Send {)}
}
else if(layer = LAYER_FKEYS) {
	Send {F5}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	SendRawKey("Down")
}
else if(layer = LAYER_MOVEGUI) {
	fiveAccel := 0.5
	SetTimer,fiveTimer,10
	KeyWait,Numpad5
	SetTimer,fiveTimer,Off
}

return

fiveTimer:
guiy += 1 *fiveAccel
Gui,Show,y%guiy%
if(fiveAccel < max_mouse_speed) {
	fiveAccel *= mouse_acceleration
}
return

mouseDownTimer:
MouseGetPos,mousex,mousey
mousey += 1 *mouseAccel
MouseMove,mousex,mousey,mouse_speed
if(mouseAccel < max_mouse_speed) {
	mouseAccel *= mouse_acceleration
}
return