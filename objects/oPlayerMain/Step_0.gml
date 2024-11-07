get_main_controls();

xDirection = rightKey - leftKey;
x = x + (xDirection * moveSpd);

yDirection = downKey - upKey;
y = y + (yDirection * moveSpd);