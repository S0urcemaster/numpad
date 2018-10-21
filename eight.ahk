;

EightFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_SIGNS)
}
else if(layer = LAYER_MOUSE) {
	mouseAccel := 0.9
	SetTimer,mouseUpTimer,10
	KeyWait,Numpad8
	SetTimer,mouseUpTimer,Off
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGrid8()
}
else if(layer = LAYER_CURSOR) {
	Send {Up}
}
else if(layer = LAYER_LETTERS) {
	SendKey("b")
}
else if(layer = LAYER_LETTERS1) {
	SendKey("k")
}
else if(layer = LAYER_LETTERS2) {
	SendKey("t")
}
else if(layer = LAYER_NUMBERS) {
	Send {8}
}
else if(layer = LAYER_SIGNS) {
	Send {?}
}
else if(layer = LAYER_SIGNS1) {
	Send {>}
}
else if(layer = LAYER_FKEYS) {
	Send {F8}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	SendRawKey("Up")
}
else if(layer = LAYER_MOVEGUI) {
	eightAccel := 0.5
	SetTimer,eightTimer,10
	KeyWait,Numpad8
	SetTimer,eightTimer,Off
}

return

eightTimer:
guiy -= 1 *eightAccel
Gui,Show,y%guiy%
if(eightAccel < max_mouse_speed) {
	eightAccel *= mouse_acceleration
}
return

mouseUpTimer:
MouseGetPos,mousex,mousey
mousey -= 1 *mouseAccel
MouseMove,mousex,mousey,mouse_speed
if(mouseAccel < max_mouse_speed) {
	mouseAccel *= mouse_acceleration
}
return