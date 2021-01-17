//WALKING FUNCTION
function mainWalk():Void
{
	if(Key.isDown(82) && allowRestart)//R
	{
		//trace('Restart');
		gotoAndPlay(2);
		//mcMain._x = levelStart._x;
		//mcMain._y = levelStart._y;
	}
	
	if(Key.isDown(16))//sprint
	{
		_global.currentSpeed = mainSpeed*1.5;
		//trace('sprint');
	}
	else
	{
		_global.currentSpeed = mainSpeed;
	}

 	//if the "A" key or Left Arrow Key is Down
	if(Key.isDown(37) || Key.isDown(65))
	{
		//then move left
		mcMain._x -= _global.currentSpeed;
		//Flip left
		mcMain._xscale =-100;
		//set running
		mainRunning = true;
	}
	
	//if the "D" key or Right Arrow Key is Down
	else if(Key.isDown(39) || Key.isDown(68))
	{
		 //then move the guy to the right
		mcMain._x += _global.currentSpeed;
		//Flip Right
		mcMain._xscale =100;
		//set running
		mainRunning = true;
	}

	else
	{
		mainRunning = false;
	}
}


//JUMPING FUNCTION
function mainJump():Void
{
	if(mainJumping)
	{
		currentSpeed = jumpMoveSpeed;
	}
	else(!mainJumping)
	{
		currentSpeed = mainSpeed;
	}
		//gravity
		mcMain._y+=gravity;		
		
	if(!mainJumping)
	{
		if(Key.isDown(38) || Key.isDown(87)|| Key.isDown(32))
		{
		gravity = -7;
       	mainJumping = true;
		}
	}
}