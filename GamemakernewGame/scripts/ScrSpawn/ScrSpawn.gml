// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function ScrSpawn(){
	repeat(5) {
		b = instance_create_layer(x, y,"Enemy", oEnemy);
		b.speed = random_range(10, 11);
		b.direction = random_range(195,30);
		b.friction = random_range(0.3, 0.8);
	}
}