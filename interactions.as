//MY INTERACTIVE OBJECTS
//Regular Jump Pads
var JumpPads:InteractiveObj = new InteractiveObj(jumpPads, false, "jumppad");
//Destructable Jump Pads
var DestructableJP:InteractiveObj = new InteractiveObj(DjumpPads, true, "jumppad");
//Float Jump Power Up
var FloatJump:InteractiveObj = new InteractiveObj(powerUps, true, "float");

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
	
	for (j = 0; j < clipCycle.length; j++)
	{
		//Jump Pad Up
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
		//Float Power Up
		if (_root.mcMain.hitTest(clipCycle[j]) && (object.isType == "float"))
		{
			gravity = -3;
			//trace(gravity);
			mainJumping = true;
			setTimeout(restoreGravity,3000);
			if(object.Collectable == true)
			{
			unloadMovie(clipCycle[j]);
			}
		}
	}
}

function restoreGravity():Void
{
	mainJumping = true;
	gravity = 5;
	//trace(gravity);
}