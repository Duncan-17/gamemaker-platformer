// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function ScrBloodBlue(){
	ScrLootBlue()
	repeat(50) {
		b = instance_create_layer(x, y,"Blood", oBloodBlue);
		b.speed = random_range(2, 10);
		b.direction = random_range(0,360);
		b.friction = random_range(0.3, 0.8);
	}
}

