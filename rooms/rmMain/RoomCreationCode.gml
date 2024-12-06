instance_create_depth(0,0,-9999,oTransition);
if(global.hasLeftPiece == true and global.hasRightPiece  == true and global.hasTopPiece == true) global.hasPieces = true;
if(global.hasPieces == true){
	room_goto(rmGameEnd);
}