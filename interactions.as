getTimer( )


//MY INTERACTIVE OBJECTS
//Regular Jump Pads
var JumpPads:InteractiveObj = new InteractiveObj(jumpPads, false, "jumppad");
//Destructable Jump Pads
var DestructableJP:InteractiveObj = new InteractiveObj(DjumpPads, true, "jumppad");
//Mega Jump Power Up
var MegaJump:InteractiveObj = new InteractiveObj(powerUps, true, "powerup");

//MY INTERACTIONS
function mainInteractions(object:InteractiveObj):Void
{
var clipCycle:Array = new Array();

	for(var i in object.ObjName) {
		if(object.ObjName[i] instanceof MovieClip) 
		{
			clipCycle.push(object.ObjName[i]);
		}
	}
	
	//Jump Pad Up
	for (j = 0; j < clipCycle.length; j++)
	{
		if (_root.mcMain.hitTest(clipCycle[j]) && (object.isType == "jumppad"))
		{
			//trace('PadUp');
			jumpSpeed = jumpImpulsion*-4;
			mcMain._y += jumpSpeed;
			mainJumping = true;
			if(object.Collectable == true)
			{
			unloadMovie(clipCycle[j]);
			}
		}
		if (_root.mcMain.hitTest(clipCycle[j]) && (object.isType == "powerup"))
		{
			mcMain._y -= 10;
			gravity = -0;
			mainJumping = true;
			if(object.Collectable == true)
			{
				unloadMovie(clipCycle[j]);
			}
			
		}
	}
}