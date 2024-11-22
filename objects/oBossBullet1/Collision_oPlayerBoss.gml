/// @description Insert description here


//When the bullet hits the player, decrease player's health and destroy itself
//Destroy player if their health reaches 0
lives -= 1
if lives <= 0 instance_destroy(oPlayerBoss)
instance_destroy(self);
