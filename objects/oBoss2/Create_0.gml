y_start = -100; // Start above the screen
x_start = x;
y_target = room_height / 3; // The target position (middle of the screen)
float_amplitude = 0.5; // Floating range
float_speed = 2; // Floating speed
descend_speed = 4; // Speed at which it descends

y = y_start;

// angleTarget = 90; // Target rotation angle (starts facing down)
// rotation_speed = 1; // How quickly the enemy rotates
spikeTimer = room_speed * 1; // Interval for shooting spikes
alarm[0] = spikeTimer; // Set the initial alarm
spikeSpeed = 5; // Speed of the spikes

hp = 10;
move = 0;

image_speed = 0.5;

global.boss2_defeated = false;


