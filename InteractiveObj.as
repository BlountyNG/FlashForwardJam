class InteractiveObj 
	{
	var ObjName:MovieClip;
	var Collectable:Boolean;
	function InteractiveObj(param_ObjName:MovieClip, param_Collectable:Boolean) 
		{ 
	 	this.ObjName = param_ObjName;
		this.Collectable = param_Collectable;
		}
	function getObjName():MovieClip 
		{
 		return ObjName;
 		}
 	function getCollectable():Boolean
		{
 		return Collectable;
 		}
	}	

