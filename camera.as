//CAMERA

function mainCamera():Void
{
	_root.camframe._y += (_root.mcMain._y-_y)/4;
	_root.camframe._x += (_root.mcMain._x-_x)/4;
}