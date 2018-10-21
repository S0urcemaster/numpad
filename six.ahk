;

SixFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_LETTERS2)
}
else if(layer = LAYER_MOUSE) {
	mouseAccel := 0.9
	SetTimer,mouseRightTimer,10
	KeyWait,Numpad6
	SetTimer,mouseRightTimer,Off
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGrid6()
}
else if(layer = LAYER_CURSOR) {
	Send {Right}
}
else if(layer = LAYER_LETTERS) {
	SendKey("f")
}
else if(layer = LAYER_LETTERS1) {
	SendKey("o")
}
else if(layer = LAYER_LETTERS2) {
	SendKey("x")
}
else if(layer = LAYER_NUMBERS) {
	Send {6}
}
else if(layer = LAYER_SIGNS) {
	Send {:}
}
else if(layer = LAYER_SIGNS1) {
	Send {{}
}
else if(layer = LAYER_FKEYS) {
	Send {F6}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	SendRawKey("Right")
}
else if(layer = LAYER_MOVEGUI) {
	sixAccel := 0.5
	SetTimer,sixTimer,10
	KeyWait,Numpad6
	SetTimer,sixTimer,Off
}

return

sixTimer:
guix += 1 *sixAccel
Gui,Show,x%guix%
if(sixAccel < max_mouse_speed) {
	sixAccel *= mouse_acceleration
}
return

mouseRightTimer:
MouseGetPos,mousex,mousey
mousex += 1 *mouseAccel
MouseMove,mousex,mousey,mouse_speed
if(mouseAccel < max_mouse_speed) {
	mouseAccel *= mouse_acceleration
}
return