function mainCamera():Void
{
trace('player x: ' + mcMain._x + ' player y ' + mcMain._y);
trace('cam x: ' + camFrame._x + ' cam y: ' +camFrame._y);

_root.camFrame._x = (_root.mcMain._x);
_root.camFrame._y = (_root.mcMain._y);

}

