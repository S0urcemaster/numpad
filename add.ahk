;

AddFunction:

if(layer = LAYER_MENU) {
	Send {Alt}{Down}
	setLayer(LAYER_CURSOR)
}
else if(layer = LAYER_MOUSE) {
	Click WheelDown
}
else if(layer = LAYER_CURSOR) {
	
}
else if(layer = LAYER_LETTERS) {
	ToggleControl()
}
else if(layer = LAYER_LETTERS1) {
	ToggleControl()
}
else if(layer = LAYER_LETTERS2) {
	ToggleControl()
}
else if(layer = LAYER_NUMBERS) {
	Send {:}
}
else if(layer = LAYER_SIGNS) {
	Send {;}
}
else if(layer = LAYER_SIGNS1) {
	Send {}}
}
else if(layer = LAYER_FKEYS) {
	
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	ToggleControl()
}
else if(layer = LAYER_MOVEGUI) {
	
}



return