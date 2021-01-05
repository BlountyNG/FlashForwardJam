//The main speeds of the character
var mainSpeed:Number = 7;
var runSpeed:Number = mainSpeed;
var sprintSpeed:Number = 10;
var jumpSpeed:Number = 7;
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
var mainOnGround:Boolean = false;
