instance_create_layer(oPlayer.x,oPlayer.y,"Gun",oGun);
audio_play_sound(snMenu,15,false)
instance_destroy();
instance_destroy(oShotgun);
instance_destroy(oBouncegun);