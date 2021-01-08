function mainInteractions():Void
{
	//Jump Pad Up
	for(i=0; i<20; i++)
	{
		if (_root.mcMain.hitTest(_root["jumpPad"+i]))
		{
			trace('PadUp');
			jumpSpeed = jumpImpulsion*-4;
			mcMain._y += jumpSpeed;
			mainJumping = true;
		}
	}
}

