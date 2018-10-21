;

NineFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_SIGNS1)
}
else if(layer = LAYER_MOUSE) {
	Click right
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGrid9()
}
else if(layer = LAYER_CURSOR) {
	Send {PgUp}
}
else if(layer = LAYER_LETTERS) {
	SendKey("c")
}
else if(layer = LAYER_LETTERS1) {
	SendKey("l")
}
else if(layer = LAYER_LETTERS2) {
	SendKey("u")
}
else if(layer = LAYER_NUMBERS) {
	Send {9}
}
else if(layer = LAYER_SIGNS) {
	Send {&}
}
else if(layer = LAYER_SIGNS1) {
	Send {[}
}
else if(layer = LAYER_FKEYS) {
	Send {F9}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	Send {Tab}
}
else if(layer = LAYER_MOVEGUI) {
	
}



return