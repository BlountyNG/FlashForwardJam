//Animation Functions
function mainAnimate():Void
{

	//Falling
	if(!_root.ground.hitTest(_root.mcMain._x,_root.mcMain._y, true)&& jumpSpeed > 1)
	{
		mcMain.gotoAndStop(4);
	}
	//Jumping Animation
	else if(mainJumping)
	{
		//trace('jumping');
		mcMain.gotoAndStop(3);
		break;
	}
	
	//Running Animation
	else if(mainRunning)
	{
		mcMain.gotoAndStop(2);
	}
	//Idle
	else
	{
		mcMain.gotoAndStop(1);
	}
}