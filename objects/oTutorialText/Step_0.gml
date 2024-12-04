/// @description Insert description here
// You can write your code in this editor
// Check if all required keys are pressed in the same frame
// Update flags in the step event
if (keyboard_check_pressed(ord("F"))) {
    hasDashed = true;
}
if (keyboard_check_pressed(vk_space)) {
    hasJumped = true;
}
if (mouse_check_button_pressed(mb_left)) {
    hasLeftClicked = true;
}
if (mouse_check_button_pressed(mb_right)) {
    hasRightClicked = true;
}

// Check if all actions have occurred
if (hasDashed && hasJumped && hasLeftClicked && hasRightClicked) {
    // Create the instance
    instance_create_layer(1700, 450, "Instances", oMainRoomTele);
}