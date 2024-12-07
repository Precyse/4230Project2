// Number of spikes to shoot
var spike_count = 4; // Change this for more/less spikes
var directions = [0, 90, 180, 270]; // Spike directional movement

for (var i = 0; i < spike_count; i++) {
    // Calculate the angle for each spike
    var angle = directions[i]
    var rad_angle = degtorad(angle); // Convert to radians

    // Calculate the spawn position for the spike
    var spike_x = x + cos(rad_angle) * 16; // 16 is the distance from the center
    var spike_y = y + sin(rad_angle) * 16;

    // Create the spike instance
    var spike = instance_create_depth(spike_x, spike_y, 0, oBoss2Attack);
    spike.direction = angle; // Set the spike's direction
    spike.speed = spikeSpeed; // Set the spike's speed
}

// Reset the alarm for the next shot
alarm[0] = spikeTimer;
