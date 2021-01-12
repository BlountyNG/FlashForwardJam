function mainInteractions():Void
{
	
var JumpPads:InteractiveObj = new InteractiveObj(jumpPads, false);

var clipCycle:Array = new Array();

	for(var i in JumpPads.ObjName) {
		if(JumpPads.ObjName[i] instanceof MovieClip) 
		{
			clipCycle.push(JumpPads.ObjName[i]);
		}
	}
	
	//Jump Pad Up
	for (j = 0; j < clipCycle.length; j++)
	{
		if (_root.mcMain.hitTest(clipCycle[j]))
		{
			trace('PadUp');
			jumpSpeed = jumpImpulsion*-4;
			mcMain._y += jumpSpeed;
			mainJumping = true;
			if(this.Collectable == true)
			{
			unloadMovie(clipCycle[j]);
			}
		}
	}
}