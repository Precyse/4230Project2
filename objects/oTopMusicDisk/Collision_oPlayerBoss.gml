/// @description Insert description here
// You can write your code in this editor
instance_destroy();
global.hasTopPiece = true;
if(global.hasPieces == true){
	room_goto(rmGameEnd)
} else {
	room_goto(rmMain)
}
// Set an alarm to teleport the player after 2 seconds (2 seconds = 2 * room_speed)
