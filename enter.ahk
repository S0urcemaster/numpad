;

EnterFunction:

if(layer = LAYER_MENU) {
	Send {Enter}
}
else if(layer = LAYER_MOUSE) {
	
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGridEnter()
}
else if(layer = LAYER_CURSOR) {
	
}
else if(layer = LAYER_LETTERS) {
	ToggleShift()
}
else if(layer = LAYER_LETTERS1) {
	ToggleShift()
}
else if(layer = LAYER_LETTERS2) {
	ToggleShift()
}
else if(layer = LAYER_NUMBERS) {
	Send {.}
}
else if(layer = LAYER_SIGNS) {
	Send {"}
}
else if(layer = LAYER_SIGNS1) {
	Send {/}
}
else if(layer = LAYER_FKEYS) {
	
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	PhysicalToggleShift()
}
else if(layer = LAYER_MOVEGUI) {
	
}



return