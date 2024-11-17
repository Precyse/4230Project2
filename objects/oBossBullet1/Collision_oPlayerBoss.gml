/// @description Insert description here


//When the bullet hits the player, decrease player's health and destroy itself
//Destroy player if their health reaches 0
oPlayerBoss.hp -= 25
if oPlayerBoss.hp <= 0 instance_destroy(oPlayerBoss)
instance_destroy(self);
