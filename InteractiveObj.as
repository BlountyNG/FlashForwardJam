class InteractiveObj 
	{
	var ObjName:MovieClip;
	var Collectable:Boolean;
	var isType:String;
	function InteractiveObj(param_ObjName:MovieClip, param_Collectable:Boolean, param_isType:String) 
		{ 
	 	this.ObjName = param_ObjName;
		this.Collectable = param_Collectable;
		this.isType = param_isType;
		}
	function getObjName():MovieClip 
		{
 		return ObjName;
 		}
 	function getCollectable():Boolean
		{
 		return Collectable;
 		}
	function getisType():String
		{
 		return isType;
 		}
	}	

