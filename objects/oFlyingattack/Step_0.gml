x += oFlyingattack.move_dir*oFlyingattack.move_spd;
if (bbox_left <= 0 || bbox_right >= room_width) {
    oFlyingattack.move_dir = -oFlyingattack.move_dir;
}

