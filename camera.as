function mainCamera():Void
{
//trace('player x: ' + mcMain._x + ' player y ' + mcMain._y);
//trace('cam x: ' + camFrame._x + ' cam y: ' +camFrame._y);

import flash.geom.Point;
var point_1:Point = new Point(_root.camFrame._x, _root.camFrame._y);
var point_2:Point = new Point(_root.mcMain._x, _root.mcMain._y);
var interpolatedPoint:Point = Point.interpolate(point_1, point_2, .93);

_root.camFrame._x = (interpolatedPoint.x);
_root.camFrame._y = (interpolatedPoint.y);

_root.Bbuildings._x = (interpolatedPoint.x);
_root.Bbuildings._y = (interpolatedPoint.y + 100);

_root.Obuildings._x = (interpolatedPoint.x);
_root.Obuildings._y = (interpolatedPoint.y);

_root.Bsky._x = (interpolatedPoint.x);
_root.Bsky._y = (interpolatedPoint.y);

_root.Bclouds._x = (interpolatedPoint.x);
_root.Bclouds._y = (interpolatedPoint.y - 100);

_root.Brays._x = (interpolatedPoint.x);
_root.Brays._y = (interpolatedPoint.y);

}

