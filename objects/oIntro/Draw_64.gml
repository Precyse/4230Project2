/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_rectangle(0,0,1280,225,false)
draw_rectangle(0,720,1280,495,false)




draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(Neon2);

draw_text(640,620,print);

draw_sprite_ext(sFloor,0,0,0,1280,720,0,c_black,a)