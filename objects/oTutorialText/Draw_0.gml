/// @description Insert description here
// You can write your code in this editor
//draw_self()
//draw_set_color(c_blue);

draw_set_font(Neon2)
draw_text(x,y,"Press Space to Jump");
draw_text(x,y+50,"Left Click for Long Range Attack");
draw_text(x,y+100,"Right Click for Close Range Attack");
draw_text(x,y+150,"F to Dash");

if keyboard_check_pressed(vk_alt){
	room_goto_next();
}