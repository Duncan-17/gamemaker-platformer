//all doors

if (image_index == 0) {image_index = 1;
	//oSlidingdoor.active = true;
	
	if (instance_exists(oSlidingdoor)){
	with(oSlidingdoor) {
	if (	activate == other.activate ) {active = true}
	}
	}
}
		
