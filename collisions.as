#include "saveload.as"
#include "interactions.as"

//Collision
var collide:Number = .1;

var portalActive:Boolean = false;

//Collisions
function mainCollisions():Void
{		
		//Death Box
		if (_root.deathBox.hitTest(_root.mcMain._x , _root.mcMain._y, true))
		{
			//trace ('death')
			//gotoAndPlay(2);
			Load();
			deathAnimate();
		}
		
		if(_root.checkPoint.hitTest(_root.mcMain._x ,_root.mcMain._y , true))
		{
			Save();
			_root.checkPoint.gotoAndPlay(2);
			trace("checkpoint")
		}
		
		if(coinsCollected == 7)
		{
			portalActive = true;
			_root.Portal.gotoAndStop(2);
		}
		
		if (_root.levelDoor.hitTest(_root.mcMain._x , _root.mcMain._y, true) &&portalActive)
		{
			//currentLevel = +1
			_root.gotoAndStop(4);
		}
		
		//gravity
		
		gravity += 0.3;
		
		mcMain._y += gravity;
		
		//Move Player Up
		while(_root.ground.hitTest(_root.mcMain._x ,_root.mcMain._y, true))
		{
			//trace(hit);
			//trace('up');
			//hit = hit + 1;
			mainJumping = false;
			mcMain._y -= collide;
			gravity = 0;
		
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
			mcMain._y += collide;
			
		}
		//Jump Bounce Right
		if(_root.ground.hitTest(_root.mcMain._x + (_root.mcMain._width/2),_root.mcMain._y - (_root.mcMain._height/4), true) && mainJumping)
		{
			//trace('jump bounce right');
			mcMain._x -= _global.currentSpeed;
			mcMain._y += collide;
			
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