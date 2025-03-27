image_angle = random(360);
gravity = 0.3;
direction = random_range(10, 170);
speed = random_range(4, 11);
angspd = random_range(7,20);
friction = 0.02;
image_index = irandom(2);

act_count = 30;

if x > oPlayer.x
{direction = random_range(10, 70);}
if x < oPlayer.x
{direction = random_range(110, 170);}