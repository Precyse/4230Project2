/// @description Insert description here


//On contact with boss, reduce boss hp and destroy it if its hp reaches 0
//Destroys itself afterwards
oBoss.hp -= 0.8
if oBoss.hp <= 0 instance_destroy(oBoss)
instance_destroy(self);