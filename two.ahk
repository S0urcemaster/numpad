;

TwoFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_CURSOR)
}
else if(layer = LAYER_MOUSE) {
	
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGrid2()
}
else if(layer = LAYER_CURSOR) {
	
}
else if(layer = LAYER_LETTERS) {
	SendKey("h")
}
else if(layer = LAYER_LETTERS1) {
	SendKey("q")
}
else if(layer = LAYER_LETTERS2) {
	SendKey("z")
}
else if(layer = LAYER_NUMBERS) {
	Send {2}
}
else if(layer = LAYER_SIGNS) {
	Send {\}
}
else if(layer = LAYER_SIGNS1) {
	Send {-}
}
else if(layer = LAYER_FKEYS) {
	Send {F2}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	Send ^x
}
else if(layer = LAYER_MOVEGUI) {
	
}



return