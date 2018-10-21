;

isShift := ""
isControl := ""
isAlt := ""
isLMouseDown := false

ToggleLMouse() {
	global isLMouseDown
	if(isLMouseDown) {
		Click Up
		isLMouseDown := false
	}
	else {
		Click Down
		isLMouseDown := true
	}
}

SendKey(key) {
	global isShift, isControl, isAlt
	Send %isShift%%isControl%%isAlt%%key%
	ReleaseShift()
	ReleaseControl()
	ReleaseAlt()
}

SendRawKey(key) {
	global isShift, isControl, isAlt
	Send %isShift%%isControl%%isAlt%{%key%}
}

PressShift() {
	global isShift
	isShift := "+"
	setEnter("SHFT")
}

ReleaseShift() {
	global isShift
	isShift := ""
	setEnter("shft")
}

ToggleShift() {
	global isShift
	if(isShift = "+") {
		ReleaseShift()
	}
	else {
		PressShift()
	}
}

PhysicalToggleShift() {
	global isShift
	if(isShift = "+") {
		ReleaseShift()
		Send {Shift Up}
	}
	else {
		PressShift()
		Send {Shift Down}
	}
}
PhysicalToggleAlt() {
	global isAlt
	if(isAlt = "!") {
		ReleaseAlt()
		Send {Alt Up}
	}
	else {
		PressAlt()
		Send {Alt Down}
	}
}

PressControl() {
	global isControl
	isControl := "^"
	setAdd("CTRL")
}

ReleaseControl() {
	global isControl
	isControl := ""
	setAdd("ctrl")
}

ToggleControl() {
	global isControl
	if(isControl = "^") {
		ReleaseControl()
	}
	else {
		PressControl()
	}
}

PressAlt() {
	global isAlt
	isAlt := "!"
	setSub("ALT")
}

ReleaseAlt() {
	global isAlt
	isAlt := ""
	setSub("alt")
}

ToggleAlt() {
	global isAlt
	if(isAlt = "!") {
		ReleaseAlt()
	}
	else {
		PressAlt()
	}
}
