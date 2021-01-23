
scale = random_range(0.05,0.75)
slowdown = random_range(0.05,0.25)
image_speed = 0
image_index = irandom_range(0, image_number-1)
image_xscale = scale
image_yscale = scale
image_angle = irandom_range(0,359)

direction = irandom_range(0,359)

xExtra = x + lengthdir_x(50,direction);
yExtra = y + lengthdir_y(50,direction);
speed_ = random_range(.25,4)

