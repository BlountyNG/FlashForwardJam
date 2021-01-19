//Movement

//Idle
var mainIdle:Boolean = true;

//Running
var mainRunning: Boolean = false;
var mainSpeed:Number;
var currentSpeed:Number;
var jumpMoveSpeed:Number = 5;
var gravity:Number = 5;

//Jumping
var mainJumping:Boolean = false;
var jumpStrength:Number = 10;

//Falling
var mainFalling:Boolean = false;

//Floating
var mainFloating:Boolean = false;

//Collision
var collide:Number = 1;

//Other

//Level Variables
var currentLevel:Number = 2;
var allowRestart:Boolean = true;
var coinsCollected:Number = 0;