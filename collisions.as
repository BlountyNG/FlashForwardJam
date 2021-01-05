//Collisions
var hit:Number = 0;
function mainCollisions():Void

{

		if(_root.ground.hitTest(_root.mcMain._x,_root.mcMain._y - 1, true))
		{
			trace(hit);
			hit = hit + 1;
			mainJumping = false;
			mainOnGround = true;
			mcMain._y = ground.y;
			mcMain._y -= gravity;
			break;
		}
		
		if(!_root.ground.hitTest(_root.mcMain._x,_root.mcMain._y - 1, true))
		{
			mcMain._y +=gravity;
			break;
		}
		
		
}