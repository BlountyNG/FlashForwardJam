//CAMERA
function mainCamera():Void
{
	_root.camFrame._y += (_root.mcMain._y-_y)/4;
	_root.camFrame._x += (_root.mcMain._x-_x)/4;
}