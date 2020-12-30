
instance_create_layer(oPlayer.x,oPlayer.y,"Gun",oShotgun);
audio_play_sound(snMenu,15,false)
instance_destroy();
instance_destroy(oGun);
instance_destroy(oBouncegun);
