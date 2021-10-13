/// @description Insert description here
// You can write your code in this editor
timer++;

if(timer >= timerLimit || keyboard_check_released(ord("A")))
{
	scrEndGen();
	scrGenerateValues();
	currentGeneration++;
}