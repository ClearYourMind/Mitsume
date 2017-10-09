/// @desc Hurt

hurt = true
if not pieces[maxpiece - piece - 1].hurt {
	var _count = floor(maxpiece / halfpiece)
	for (var i=0; i<_count; i++) {
		var _curPiece = maxpiece - ((piece+halfpiece*i) mod maxpiece) - 1
		pieces[_curPiece].hurt = true
	}
}
