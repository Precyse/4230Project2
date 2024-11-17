/// @description Insert description here


//Drawing player's hearts
if instance_exists(oPlayerBoss)
for (var i = 0; i < oPlayerBoss.hp; i+=25){
	draw_sprite(sHeart,0,i+25,25)
}