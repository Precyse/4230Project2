if (lives > 0) {
    lives -= 1;  // Lose one life immediately when hitting the enemy

}

// Check if lives are zero (Game Over)
if (lives <= 0) {
    instance_destroy();  // Destroy the player object
}
