y = ystart + sin(get_timer()/50000);

instance_create_layer(x,y,"Gun",oGun)

instance_destroy();
instance_destroy(oShotgun);
instance_destroy(oBouncegun);