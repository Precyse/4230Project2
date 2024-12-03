/// @description Insert description here
// You can write your code in this editor
camera_set_view_pos(view_camera[0],xpos,180);
xpos = max(xpos-0.3,0);

if (!fadeout) a = max(a-0.005,0.25); else a = min(a+0.005,1);

l += 0.4;

print = string_copy(str,1,l);
if (l > string_length(str)+100) and (next < array_length_1d(strings)-1){
	l = 0;
	next++;
	if(next == array_length_1d(strings)-1) holdspace++;
}

str = strings[next];

if(str == strings[2]) and (keyboard_check_pressed(vk_anykey)){
	room_goto_next();
}