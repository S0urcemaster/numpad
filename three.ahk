;

ThreeFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_EDIT)
}
else if(layer = LAYER_MOUSE) {
	show3x3Grid(gridx, gridy, gridw, gridh, gridt)
	setLayer(LAYER_MOUSE_GRID)	
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGrid3()
}
else if(layer = LAYER_CURSOR) {
	Send {PgDn}
}
else if(layer = LAYER_LETTERS) {
	SendKey("i")
}
else if(layer = LAYER_LETTERS1) {
	SendKey("r")
}
else if(layer = LAYER_LETTERS2) {
	
}
else if(layer = LAYER_NUMBERS) {
	Send {3}
}
else if(layer = LAYER_SIGNS) {
	Send {$}
}
else if(layer = LAYER_SIGNS1) {
	Send {*}
}
else if(layer = LAYER_FKEYS) {
	Send {F3}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	Send ^v
}
else if(layer = LAYER_MOVEGUI) {
	
}



return