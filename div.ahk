;

DivFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_FKEYS)
}
else if(layer = LAYER_MOUSE) {
	Click WheelLeft
}
else if(layer = LAYER_CURSOR) {
	
}
else if(layer = LAYER_LETTERS) {
	SendKey("ä")
}
else if(layer = LAYER_LETTERS1) {
	SendKey("ö")
}
else if(layer = LAYER_LETTERS2) {
	SendKey("ü")
}
else if(layer = LAYER_NUMBERS) {
	Send {0}
}
else if(layer = LAYER_SIGNS) {
	Send {'}
}
else if(layer = LAYER_SIGNS1) {
	Send {|}
}
else if(layer = LAYER_FKEYS) {
	Send {F10}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	Send ^z
}
else if(layer = LAYER_MOVEGUI) {
	
}



return