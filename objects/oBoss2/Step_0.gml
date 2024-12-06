// If the object hasn't reached its target position, move it down
if (y < y_target) {
    y += descend_speed;
} else {
    // When the object reaches the target, make it float
    y += sin(current_time * float_speed) * float_amplitude; // Floating up and down
    
}
