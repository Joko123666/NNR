image_angle = random(360);
gravity = 0.4;
direction = random_range(10, 170);
speed = random_range(4, 11);
image_alpha = irandom_range(3, 6) * 0.1;
angspd = random_range(7,20);
friction = 0.02;

if x > oPlayer.x
{direction = random_range(10, 70);}
if x < oPlayer.x
{direction = random_range(110, 170);}