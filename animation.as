//Animation Functions
function mainAnimate():Void
{
	//Falling
	if(!_root.ground.hitTest(_root.mcMain._x,_root.mcMain._y, true)&& gravity > 1)
	{
		mcMain.gotoAndStop(4);
	}
	//Crouch
	else if(mainCrouch)
	{
		mcMain.gotoAndStop(5);
	}
	
	//Jumping Animation
	else if(gravity < 0)
	{
		//trace('jumping');
		mcMain.gotoAndStop(3);
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

