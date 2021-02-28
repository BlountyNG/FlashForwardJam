var savefile = SharedObject.getLocal("FFJ");

function Save():Void
{
    _root.savefile = SharedObject.getLocal("FFJ");
    _root.savefile.data.x = _root.mcMain._x;
	_root.savefile.data.y = _root.mcMain._y;
	//trace("save");

}


function Load():Void
{
    _root.savefile = SharedObject.getLocal("FFJ");
    _root.mcMain._x = _root.savefile.data.x;
	_root.mcMain._y = _root.savefile.data.y;
	savefile.flush();
	//trace("load");

}

function Clear():Void
{
    _root.myData.clear();
}

/*if(_root.ground.hitTest(_root.mcMain._x ,_root.mcMain._y , true))
		{
			Save();
			_root.checkPoint.gotoAndPlay(2);
			trace("checkpoint")
		}*/