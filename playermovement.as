//WALKING FUNCTION
function mainWalk():Void
{
	
 	//if the "A" key or Left Arrow Key is Down
	if(Key.isDown(37) || Key.isDown(65))
	{
		//then move left
		mcMain._x -= mainSpeed;
		//Flip left
		mcMain._xscale =-100;
		//set running
		mainRunning = true;
	}
	
	//if the "D" key or Right Arrow Key is Down
	else if(Key.isDown(39) || Key.isDown(68))
	{
		 //then move the guy to the right
		mcMain._x += mainSpeed;
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

	//if main isn't already jumping
	if(!mainJumping)
	{
		if(Key.isDown(38) || Key.isDown(87)){
		//then start jumping
		mainJumping = true;
		jumpSpeed = jumpImpulsion*-1;
		mcMain._y += jumpSpeed;
	}
}
	else
	{
		//if we're already jumping, then continue to do so
		if(jumpSpeed < 0)
			{
			jumpSpeed *= 1 - jumpImpulsion/75;
			if(jumpSpeed > -jumpImpulsion*.2){
				jumpSpeed *= -.2;
		}
}
		if(jumpSpeed > 0 && jumpSpeed <= jumpImpulsion)
			{
			jumpSpeed *= 1 + jumpImpulsion/50;
			}
		mcMain._y += jumpSpeed-3;
		//if main hits the floor, then stop jumping
		//we'll have to change this however when we create the blocks in the level
		if(mcMain._y >= Stage.height /*- mcMain._height*/){
			mainJumping = false;
			mainOnGround = true;
			mcMain._y = Stage.height /*- mcMain._height*/;
		}
		
	}

}

//Gravity Function
function mainGravity():Void
{

if(mcMain._y >= Stage.height /*- mcMain._height*/)
	{
		mainOnGround = true;
		mcMain._y = Stage.height /*- mcMain._height*/;
	}

if (!mainOnGround)
		{
		mcMain._y += gravity++;
		}
}

//Animation Functions
function mainAnimate():Void
{
	//Falling Animatiom
	if (jumpSpeed > 1 && mainJumping)
	{
		mcMain.gotoAndStop(4);
	}
	
	//Jumping Animation
	else if(mainJumping)
	{
		mcMain.gotoAndStop(3);
	}
	
	//Running Animation
	else if(mainRunning)
	{
		mcMain.gotoAndStop(2);
	}
	else
	{
		mcMain.gotoAndStop(1);
	}

}