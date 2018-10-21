;

ZeroFunction:

if(layer = LAYER_MENU) {
	
	if A_PriorHotkey = %A_ThisHotkey%
	{	
		if A_TimeSincePriorHotkey < 100
		{
			tripleZeroCount += 1
			if(tripleZeroCount = 2) {
				tripleZeroCount := 0
				goto,TripleZeroFunction
			}
			return
		}
	}
}
else if(layer = LAYER_MOUSE_GRID) {
	lMouseGrid0()
} else {
	
	if A_PriorHotkey = %A_ThisHotkey%
	{	
		if A_TimeSincePriorHotkey < 100
		{
			tripleZeroCount += 1
			if(tripleZeroCount = 2) {
				tripleZeroCount := 0
				goto,TripleZeroFunction
			}
			return
		}
	}
	ReleaseShift()
	ReleaseControl()
	ReleaseAlt()
	setLayer(LAYER_MENU)
}



return

