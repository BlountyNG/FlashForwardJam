function mainInteractions():Void
{
	var jumpPadsArray:Array = new Array();
	for(var i in jumpPads)
	{
	jumpPadsArray.push([i]);
	//trace(jumpPadsArray);
	}
	//Jump Pad Up
		for (j = 1; j < jumpPadsArray.length+1; j++)
		{
			if (_root.mcMain.hitTest("_root.jumpPads.instance" + j))
			{
			//trace('PadUp');
			//unloadMovie("_root.jumpPads.instance" + j); too remove movieclips when used
			jumpSpeed = jumpImpulsion*-4;
			mcMain._y += jumpSpeed;
			mainJumping = true;
			}
		}
		
	if(Key.isDown(82))//R
	{
		//trace('Restart');
		mcMain._x = levelStart._x;
		mcMain._y = levelStart._y;
	}
			
}