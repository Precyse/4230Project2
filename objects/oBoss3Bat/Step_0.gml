/// @description Insert description here
// You can write your code in this editor
if (instance_exists(oPlayerBoss)){
	if (distance_to_object(oPlayerBoss) < 200){
		follow = false
	}
	if follow != false{
		direction = point_direction(x,y,oPlayerBoss.x,oPlayerBoss.y)
	}
		
}