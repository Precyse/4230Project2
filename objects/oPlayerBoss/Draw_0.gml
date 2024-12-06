/// @description Insert description here
// You can write your code in this editor
draw_sprite(sHeart, 0, 25, 25);
draw_set_color(c_white);
draw_set_font(Normal);
draw_set_halign(fa_left); // Ensure alignment is reset for this block
draw_set_valign(fa_top); // Ensure alignment is reset for this block
draw_text(65, 30, "x " + string(lives));
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * face, image_yscale, image_angle, image_blend, image_alpha);

