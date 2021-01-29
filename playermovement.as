//Movement

//Idle
var mainIdle:Boolean = true;

//Running
var mainRunning: Boolean = false;
var mainSpeed:Number;
var currentSpeed:Number;
var jumpMoveSpeed:Number = 5;
var gravity:Number = 5;

//Jumping
var mainJumping:Boolean = false;
var jumpStrength:Number = 10;

//Falling
var mainFalling:Boolean = false;

//Floating
var mainFloating:Boolean = false;


//WALKING FUNCTION
function mainRun():Void
{
	if(!manRunning)
	{
		if(Key.isDown(37) || Key.isDown(39))
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
		if(Key.isDown(37))
		{
			//then move left
			mcMain._x -= _global.currentSpeed;
			//Flip left
			mcMain._xscale =-100;
			//set running
			mainRunning = true;
		}
	
		//if the "D" key or Right Arrow Key is Down
		else if(Key.isDown(39))
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
	if(!mainJumping)
	{
		if(Key.isDown(38))
		{	
			gravity -= 1;
			currentSpeed = jumpMoveSpeed;
			if(gravity < -7)
			{
				mainJumping = true;
			}
		}
		else
		{
			currentSpeed = mainSpeed;
			
		}
		if(!Key.isDown(38))
		{
			mainJumping = true;
		}
	}
}