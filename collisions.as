//Collisions
var hit:Number = 0;
var collide:Number = 1;
function mainCollisions():Void

{

		if(_root.ground.hitTest(_root.mcMain._x ,_root.mcMain._y -4 , true))
		{
			trace(hit);
			trace('down');
			hit = hit + 1;
			mainJumping = false;
			mcMain._y -= gravity;
		}
		
		if(!_root.ground.hitTest(_root.mcMain._x,_root.mcMain._y +4, true))
		{
			trace('up');
			mainJumping = true;
			mcMain._y += gravity;
		}
		
		if(_root.ground.hitTest(_root.mcMain._x,_root.mcMain._y - (_root.mcMain._height), true))
		{
			trace('bounce head');
			mcMain._y += jumpImpulsion*2;
		}
		
		if(_root.ground.hitTest(_root.mcMain._x - (_root.mcMain._width/2),_root.mcMain._y - (_root.mcMain._width/2), true) && mainJumping)
		{
			_root.mainSpeed = 0;
			trace('jump bounce left');
			mcMain._x += collide;
			mcMain._y += collide;
		}
		
		if(_root.ground.hitTest(_root.mcMain._x + (_root.mcMain._width/2),_root.mcMain._y - (_root.mcMain._height/2), true) && mainJumping)
		{
			_root.mainSpeed = 0;
			trace('jump bounce right');
			mcMain._x -= collide;
			mcMain._y += collide;
		}
		
		if(_root.ground.hitTest(_root.mcMain._x - (_root.mcMain._width/2),_root.mcMain._y - (_root.mcMain._width/2), true))
		{
			_root.mainSpeed = 0;
			trace('bounce left');
			mcMain._x += collide;
		}
		
		if(_root.ground.hitTest(_root.mcMain._x + (_root.mcMain._width/2),_root.mcMain._y - (_root.mcMain._height/2), true))
		{
			_root.mainSpeed = 0;
			trace('bounce right');
			mcMain._x -= collide;
		}
		
}