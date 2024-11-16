/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_font(fontNeon200);
draw_set_color(c_blue);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x,y,"Tempo");

if keyboard_check_pressed(vk_anykey){
	room_goto_next();
}
