
lMouseGrid1() {
	global
	reduceScale()
	gridy += gridyFactor*2
	show3x3Grid(gridx, gridy, gridw, gridh, gridt)
}

lMouseGrid2() {
	global
	reduceScale()
	gridy += gridyFactor*2
	gridx += gridxFactor
	show3x3Grid(gridx, gridy, gridw, gridh, gridt)
}

lMouseGrid3() {
	global
	reduceScale()
	gridy += gridyFactor*2
	gridx += gridxFactor*2
	show3x3Grid(gridx, gridy, gridw, gridh, gridt)
}

lMouseGrid4() {
	global
	reduceScale()
	gridy += gridyFactor
	show3x3Grid(gridx, gridy, gridw, gridh, gridt)
}

lMouseGrid5() {
	global
	reduceScale()
	gridy += gridyFactor
	gridx += gridxFactor
	show3x3Grid(gridx, gridy, gridw, gridh, gridt)
}

lMouseGrid6() {
	global
	reduceScale()
	gridy += gridyFactor
	gridx += gridxFactor*2
	show3x3Grid(gridx, gridy, gridw, gridh, gridt)
}

lMouseGrid7() {
	global
	reduceScale()
	show3x3Grid(gridx, gridy, gridw, gridh, gridt)
}

lMouseGrid8() {
	global
	reduceScale()
	gridx += gridxFactor
	show3x3Grid(gridx, gridy, gridw, gridh, gridt)
}

lMouseGrid9() {
	global
	reduceScale()
	gridx += gridxFactor*2
	show3x3Grid(gridx, gridy, gridw, gridh, gridt)
}

lMouseGrid0() {
	global
	hide3x3Grid()
	resetScale()
	setLayer(LAYER_MOUSE)
}

lMouseGridEnter() {
	global
	MouseMove,gridx+(gridw/2),gridy+(gridh/2)
	hide3x3Grid()
	resetScale()
	setLayer(LAYER_MOUSE)
}

reduceScale() {
	global
	gridyFactor /= 3
	gridxFactor /= 3
	gridw /= 3
	gridh /= 3
}

resetScale() {
	global
	gridx := 0
	gridy := 0
	gridw := A_ScreenWidth
	gridh := A_ScreenHeight
	gridt := grid_thickness
	gridxFactor := gridw
	gridyFactor := gridh
}