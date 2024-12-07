move_dir = 1;
move_spd = 4; 


y_start = -100; // Start above the screen
x_start = x;
y_target = 200; // The target position (middle of the screen)
descend_speed = 4; // Speed at which it descends

// angleTarget = 90; // Target rotation angle (starts facing down)
// rotation_speed = 1; // How quickly the enemy rotates
spikeTimer = room_speed * 1; // Interval for shooting spikes
alarm[0] = spikeTimer; // Set the initial alarm
spikeSpeed = 5; // Speed of the spikes

hp = 100;
move = 0;

image_speed = 0.5;

global.boss2_defeated = false;


