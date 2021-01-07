function mainInteractions():Void
{
	/*
//Jump Pad Up
		if (_root.jumpPad.hitTest(_root.mcMain._x ,_root.mcMain._y , true))
		{
			trace('PadUp');
		}
		*/
		
		if (_root.mcMain.hitTest(_root.jumpPad))
			
		{
			trace('PadUp');
			jumpSpeed = jumpImpulsion*-4;
			mcMain._y += jumpSpeed;
			mainJumping = true;
		}
}