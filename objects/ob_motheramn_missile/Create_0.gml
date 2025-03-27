
target_point = instance_create_layer(oPlayer.x, oPlayer.y, "Effects", ob_motherman_target);

image_angle = point_direction(x, y, target_point.x, target_point.y);
direction = point_direction(x, y, target_point.x, target_point.y);

speed = 1;
moving_speed = -2;
knockback_power = 10;
attack_power = 30;