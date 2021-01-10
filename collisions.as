//Collisions
function mainCollisions():Void
{
		//Death Box
		if (_root.deathBox.hitTest(_root.mcMain._x , _root.mcMain._y, true))
		{
			//trace ('death')
			gotoAndStop(2);

		}
		//Move Player Up
		while (_root.ground.hitTest(_root.mcMain._x ,_root.mcMain._y , true))
		{
			//trace(hit);
			//trace('up');
			//hit = hit + 1;
			mainJumping = false;
			mcMain._y -= gravity;
		}
		//Move Player Down
		if(!_root.ground.hitTest(_root.mcMain._x,_root.mcMain._y, true))
		{
			//trace('down');
			mcMain._y += gravity;
		}
		//Bounce Head
		while(_root.ground.hitTest(_root.mcMain._x,_root.mcMain._y - (_root.mcMain._height), true))
		{
			//trace('bounce head');
			mcMain._y += collide;
		}
		//Jump Bounce Left
		if(_root.ground.hitTest(_root.mcMain._x - (_root.mcMain._width/2),_root.mcMain._y - (_root.mcMain._height/4), true) && mainJumping)
		{
			//trace('jump bounce left');
			mcMain._x += _global.currentSpeed;
			mcMain._y += .01;
			
		}
		//Jump Bounce Right
		if(_root.ground.hitTest(_root.mcMain._x + (_root.mcMain._width/2),_root.mcMain._y - (_root.mcMain._height/4), true) && mainJumping)
		{
			//trace('jump bounce right');
			mcMain._x -= _global.currentSpeed;
			mcMain._y += .01;
			
		}
		//Bounce Left
		if(_root.ground.hitTest(_root.mcMain._x - (_root.mcMain._width/2),_root.mcMain._y - (_root.mcMain._height/2), true) && !mainJumping)
		{
			//trace('bounce left');
			mcMain._x += _global.currentSpeed;
			
		}
		//Bounce Right
		if(_root.ground.hitTest(_root.mcMain._x + (_root.mcMain._width/2),_root.mcMain._y - (_root.mcMain._height/2), true) && !mainJumping)
		{
			//trace('bounce right');
			mcMain._x -= _global.currentSpeed;
			
		}
		
		
		
}