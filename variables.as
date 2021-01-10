//The main speeds of the character
var mainSpeed:Number = 5;
var currentSpeed:Number;
var jumpMoveSpeed:Number = 5;
var gravity:Number = 5;

var mainRunning:Boolean = false;

//JUMPING VARIABLES
//whether or not the main guy is jumping
var mainJumping:Boolean = true;
//how quickly should the jump start off
var jumpImpulsion:Number = 10;
//the current speed of the jump;
var jumpSpeed:Number = jumpImpulsion;



//COLLISION VARIABLES
var hit:Number = 0;
var collide:Number = 0.1;

//Level Variables
var currentLevel:Number = 1;