/// @description Insert description here


//On contact with boss, reduce boss hp and destroy it if its hp reaches 0
//Destroys itself afterwards
if global.dmgCheat {
	oBoss.hp -= 50
}
else{
	oBoss.hp -= 1.5
}

if oBoss.hp <= 0 instance_destroy(oBoss)
instance_destroy(self);