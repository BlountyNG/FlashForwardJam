function mainInteractions():Void
{
	var jumpPadsArray:Array = new Array();
	for(var i in jumpPads) {
		if(jumpPads[i] instanceof MovieClip) 
		{
			jumpPadsArray.push(jumpPads[i]);
		}
	}
	
	//Jump Pad Up
	for (j = 0; j < jumpPadsArray.length; j++)
	{
		if (_root.mcMain.hitTest(jumpPadsArray[j]))
		{
			trace('PadUp');
			jumpSpeed = jumpImpulsion*-4;
			mcMain._y += jumpSpeed;
			mainJumping = true;
			//unloadMovie(jumpPadsArray[j]); removes movieclip on use
	}		
}
	if(Key.isDown(82))//R
	{
		//trace('Restart');
		mcMain._x = levelStart._x;
		mcMain._y = levelStart._y;
	}
			
}