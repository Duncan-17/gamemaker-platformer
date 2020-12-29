if (armed <= 0)

{
other.flash = 3
other.hp = other.hp - .5
ScreenShake(2,10)
instance_destroy();
}
