//WALKING FUNCTION
function mainRun():Void
{
	if(!manRunning)
	{
		if(Key.isDown(37) || Key.isDown(65) || Key.isDown(68) || Key.isDown(39))
		{
			mainSpeed += 0.1;
			if(mainSpeed>5) 
			{
				mainSpeed = 5;
			}
		}
		else
		{
			mainSpeed = 0;
		}
	
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
			mainIdle = true;
		}
	}
}

//JUMPING FUNCTION
function mainJump():Void
{
	trace(gravity);
	if(!mainJumping)
	{
		if(Key.isDown(38) || Key.isDown(87)|| Key.isDown(32))
		{	
			jumpStrength += .5;
			gravity -=jumpStrength;
			currentSpeed = jumpMoveSpeed
			if(jumpStrength > 7)
			{
				jumpStrength = 0;
				mainJumping = true;
			}
			if(gravity < -7) 
			{
				
				jumpStrength = 0;
				mainJumping = true;
			}
		}
		else
		{
			jumpStrength = 0;
			currentSpeed = mainSpeed;
			mainJumping = true;
		}
	}
}
/*
//FALLING FUNCTION
function mainFall():Void
{	
	if(mainFalling && gravity < 0)
	{
		gravity = gravity++;
	}
	
}
*/