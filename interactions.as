//Level Variables
var currentLevel:Number = 2;
var allowRestart:Boolean = true;
var coinsCollected:Number = 0;

//MY INTERACTIVE OBJECTS
//Regular Jump Pads
var JumpPads:InteractiveObj = new InteractiveObj(jumpPads, false, "jumppad");
//Destructable Jump Pads
var DestructableJP:InteractiveObj = new InteractiveObj(DjumpPads, true, "jumppad");
//Collectable Coin
var CoinsCollect:InteractiveObj = new InteractiveObj(cCoins, true, "coins");
//Float Jump Power Up
var FloatJumps:InteractiveObj = new InteractiveObj(floatJumps, true, "float");
//Mega Jump Power Up
var MegaJumps:InteractiveObj = new InteractiveObj(megaJumps, true, "megajump");

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
			object.ObjName[i].gotoAndPlay(2);
			gravity = -15;
			mainJumping = true;
			if(object.Collectable == true)
			{
			unloadMovie(clipCycle[j]);
			}
		}
		//Float Power Up
		if (_root.mcMain.hitTest(clipCycle[j]) && (object.isType == "float"))
		{
			_global.gravity = -10;
			//trace(gravity);
			allowRestart = false;
			mainJumping = true;
			mainFloating = true;
			setTimeout(restoreGravity,3000);
			if(object.Collectable == true)
			{
			unloadMovie(clipCycle[j]);
			}
		}
		//Collecting Coins
		if (_root.mcMain.hitTest(clipCycle[j]) && (object.isType == "coins"))
		{
			coinsCollected++;
			trace("coins collected " + coinsCollected);
			if(object.Collectable == true)
			{
			unloadMovie(clipCycle[j]);
			}
		}
		//Mega Jump
		if (_root.mcMain.hitTest(clipCycle[j]) && (object.isType == "megajump"))
		{
			jumpStrength = jumpStrength*10;
			setTimeout(restoreJump,5000);
			if(object.Collectable == true)
			{
			unloadMovie(clipCycle[j]);
			}
		}
	}
}

function restoreGravity():Void
{
	mainFloating = false;
	gravity = 5;
	mcMain._rotation = 0;
	//trace(gravity);
	allowRestart = true;
}

function restoreJump():Void
{
	jumpStrength = 10;
}

