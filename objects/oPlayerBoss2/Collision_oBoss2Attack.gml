if (hp > 0) {
    hp -= 20;  // Decrease health by 40 for each spike hit
    spikeHitCount += 1;  // Increment the hit count

    // If player has been hit twice by spikes, lose a life
    if (spikeHitCount >= 2) {
        lives -= 1;  // Lose one life
        spikeHitCount = 0;  // Reset spike hit count

    }
}

// Check if health is zero or below
if (hp <= 0) {
    // Handle death (you can trigger a death animation, restart, etc.)
    instance_destroy();  // Destroy the player object
    // Optionally trigger game over screen or reset the game
}
