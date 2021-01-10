function mainInteractions():Void
{
	var jumpPadsArray:Array = new Array();
	for(var i in jumpPads)
	{
	jumpPadsArray.push([i]);
	}
	
	//Jump Pad Up
		for (j = 0; j < jumpPadsArray.length+1; j++)
		{
			if (_root.mcMain.hitTest("_root.jumpPads.instance" + [j]))
			{
			trace('PadUp');
			jumpSpeed = jumpImpulsion*-4;
			mcMain._y += jumpSpeed;
			mainJumping = true;
			}
		}
	
			
}