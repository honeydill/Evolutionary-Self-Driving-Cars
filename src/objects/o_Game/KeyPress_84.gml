/// @description Insert description here
// You can write your code in this editor
if(gamefps == 60)
{
	gamefps = 1000
	 game_set_speed(144, gamespeed_fps)
}
else
{
	gamefps = 60;
	game_set_speed(60, gamespeed_fps);	
}