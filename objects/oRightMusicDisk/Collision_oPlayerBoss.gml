/// @description Insert description here
// You can write your code in this editor
instance_destroy();
global.hasRightPiece = true;
if(global.hasPieces == true){
	room_goto(rmGameEnd)
} else {
	room_goto(rmMain)
}
// Play sound