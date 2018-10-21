;

SevenFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_NUMBERS)
}
else if(layer = LAYER_MOUSE) {
	Click
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGrid7()
}
else if(layer = LAYER_CURSOR) {
	Send {Home}
}
else if(layer = LAYER_LETTERS) {
	SendKey("a")
}
else if(layer = LAYER_LETTERS1) {
	SendKey("j")
}
else if(layer = LAYER_LETTERS2) {
	SendKey("s")
}
else if(layer = LAYER_NUMBERS) {
	Send {7}
}
else if(layer = LAYER_SIGNS) {
	Send {!}
}
else if(layer = LAYER_SIGNS1) {
	Send {<}
}
else if(layer = LAYER_FKEYS) {
	Send {F7}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	Send {Delete}
}
else if(layer = LAYER_MOVEGUI) {
	
}



return