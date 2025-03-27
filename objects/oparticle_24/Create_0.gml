image_angle = random(360);
gravity = 0.005;
direction = random_range(0, 180);
speed = random_range(1, 3);
image_alpha = irandom_range(3, 6) * 0.1;
angspd = random_range(7,20);
friction = 0.01;

if x > oPlayer.x
{direction = random_range(10, 70);}
if x < oPlayer.x
{direction = random_range(110, 170);}

act_count = 25;