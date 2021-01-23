// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScrLootBlue(){
	repeat(5){
		b = instance_create_layer(x, y,"Enemy", oCoinBlue);
		b.speed = random_range(2, 10);
		b.direction = random_range(0,360);
	}
}