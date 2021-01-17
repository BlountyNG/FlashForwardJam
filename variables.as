//The main speeds of the character
var mainSpeed:Number;
var currentSpeed:Number;
var jumpMoveSpeed:Number = 5;
var gravity:Number = 5;

var mainRunning:Boolean = false;

//JUMPING VARIABLES
//whether or not the main guy is jumping
var mainJumping:Boolean = true;
//how quickly should the jump start off
var jumpStrength:Number = 10;




//COLLISION VARIABLES
var hit:Number = 0;
var collide:Number = 1;

//Level Variables
var currentLevel:Number = 2;
var allowRestart:Boolean = true;
var coinsCollected:Number = 0;