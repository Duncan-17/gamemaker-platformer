move_towards_point (xExtra, yExtra,speed_)


speed_ -= slowdown;

if (speed_ <= 0.1) {
	instance_destroy();
}