;

SubFunction:

if(layer = LAYER_MENU) {
	Send {LWin}
}
else if(layer = LAYER_MOUSE) {
	Click WheelUp
}
else if(layer = LAYER_CURSOR) {
	
}
else if(layer = LAYER_LETTERS) {
	ToggleAlt()
}
else if(layer = LAYER_LETTERS1) {
	ToggleAlt()
}
else if(layer = LAYER_LETTERS2) {
	ToggleAlt()
}
else if(layer = LAYER_NUMBERS) {
	
}
else if(layer = LAYER_SIGNS) {
	Send `%
}
else if(layer = LAYER_SIGNS1) {
	Send {]}
}
else if(layer = LAYER_FKEYS) {
	
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	PhysicalToggleAlt()
}
else if(layer = LAYER_MOVEGUI) {
	
}
else if(layer = LAYER_MORE) {
	
}



return