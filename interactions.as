function mainInteractions():Void
{
	//Jump Pad Up
	//Stores depth
	var depth:Number = jumpPad.getDepth();
	//trace(jumpPads.getDepth(i));//traces at 3
	//Stores jumpPads
	var jumpPadsArray:Array = new Array();
	//trace(jumpPadsArray);
	//checks depth progressively
	for(var i:Number = 0; i < depth; i++)
	{
		//if jumpPads movieclip contains an instance within it becomes jumpPad
		if (jumpPads.getInstanceAtDepth(i) == jumpPad)
		{
			//What I want jumpPad to test for
			if (_root.mcMain.hitTest(jumpPad))
			{
			trace('PadUp');
			jumpSpeed = jumpImpulsion*-4;
			mcMain._y += jumpSpeed;
			mainJumping = true;
			jumpPadsArray.push(getInstanceAtDepth(i));
			}
		}
	}
}
