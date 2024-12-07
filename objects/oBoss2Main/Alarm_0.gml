
var prj_count = 1; // Change this for more/less proj.
var directions = [180]; // proj. directional movement

for (var i = 0; i < prj_count; i++) {
    // Calculate the angle for each proj.
    var angle = directions[i]
    var rad_angle = degtorad(angle); // Convert to radians

    // Calculate the spawn position for the proj.
    var prj_x = x + cos(rad_angle) * 16; // 16 is the distance from the center
    var prj_y = y + sin(rad_angle) * 16;

    // Create the projectile instance
    var hit = instance_create_depth(prj_x, prj_y, 0, oBoss2Attack);
    hit.direction = angle; // Set the projectile's direction
    hit.speed = prjSpeed; // Set the projectile's speed
}

// Reset the alarm for the next shot
alarm[0] = prjTimer;