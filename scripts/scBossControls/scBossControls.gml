// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_main_controls(){
	rightKey = keyboard_check(vk_right) + keyboard_check(ord("D"));
	rightKey = clamp(rightKey, 0, 1);
	
	leftKey = keyboard_check(vk_left)  + keyboard_check(ord("A"));
	leftKey = clamp(leftKey, 0, 1);
	
	upKey = keyboard_check(vk_up) + keyboard_check(ord("W"));
	upKey = clamp(upKey, 0, 1);
	
	downKey = keyboard_check(vk_down) + keyboard_check(ord("S"));
	downKey = clamp(downKey, 0, 1);
	
}