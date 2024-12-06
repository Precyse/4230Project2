/// @description Insert description here
// You can write your code in this editor
// Draw Event
var center_x = room_width / 2;
var center_y = room_height / 2;

//
draw_set_color(c_black);
draw_set_font(fontNeon200);

// Set alignments
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw text
draw_text(center_x, center_y, "YOU DIED");

// Reset alignment if necessary for other text
draw_set_halign(fa_left);
draw_set_valign(fa_top);