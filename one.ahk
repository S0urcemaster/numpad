;

OneFunction:

if(layer = LAYER_MENU) {
	setLayer(LAYER_MOUSE)
}
else if(layer = LAYER_MOUSE) {
	ToggleLMouse()
	if(isLMouseDown) {
		setOne("LMB`nUP")
	}
	else {
		setOne("lmb`ndn")
	}
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGrid1()
}
else if(layer = LAYER_CURSOR) {
	Send {End}
}
else if(layer = LAYER_LETTERS) {
	SendKey("g")
}
else if(layer = LAYER_LETTERS1) {
	SendKey("p")
}
else if(layer = LAYER_LETTERS2) {
	SendKey("y")
}
else if(layer = LAYER_NUMBERS) {
	Send {1}
}
else if(layer = LAYER_SIGNS) {
	Send {/}
}
else if(layer = LAYER_SIGNS1) {
	Send {+}
}
else if(layer = LAYER_FKEYS) {
	Send {F1}
}
else if(layer = LAYER_MACROS) {
	
}
else if(layer = LAYER_EDIT) {
	Send ^c
}
else if(layer = LAYER_MOVEGUI) {
	
}
else if(layer = LAYER_MORE_MENU) {
	setLayer(LAYER_MOVEGUI)
}



return