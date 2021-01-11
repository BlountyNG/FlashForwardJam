function mainCamera():Void
{
//trace('player x: ' + mcMain._x + ' player y ' + mcMain._y);
//trace('cam x: ' + camFrame._x + ' cam y: ' +camFrame._y);

import flash.geom.Point;
var point_1:Point = new Point(_root.camFrame._x, _root.camFrame._y);
var point_2:Point = new Point(_root.mcMain._x, _root.mcMain._y);
var interpolatedPoint:Point = Point.interpolate(point_1, point_2, .5);

_root.camFrame._x = (interpolatedPoint.x);
_root.camFrame._y = (interpolatedPoint.y);
}

