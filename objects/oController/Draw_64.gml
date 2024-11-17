/// @description Insert description here
// You can write your code in this editor
if instance_exists(oPlayerBoss)
for (var i = 0; i < oPlayerBoss.hp; i+=25){
	draw_sprite(sHeart,0,i+25,25)
}