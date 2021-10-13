// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrFirstGen(){
	
	for(i = 0; i < numberOfCars; i++)
	{
		cars[i] = instance_create_layer(116,352,"instances",oCar);
		cars[i].image_angle = 90;
	}
	for(i = 0; i < numberOfCars; i++)
	{
		for(j = 0; j < 9; j++) //first gen numbers
		{
		cars[i].carSpeedMult[j] = random_range(-100,100);
		cars[i].carTurnMult[j] = random_range(-100,100);
		cars[i].carSpeedAdd[j] = random_range(-100,100);
		cars[i].carTurnAdd[j] = random_range(-100,100);
		}
		if(cars[i].carSpeedMult[j] == 0)
		{
			cars[i].carSpeedMult[j] = 1;
		}
		if(cars[i].carTurnMult[j] == 0)
		{
			cars[i].carTurnMult[j] = 1;	
		}
		if(cars[i].carSpeedAdd[j] == 0)
		{
			cars[i].carSpeedAdd[j] = 1;
		}
		if(cars[i].carTurnAdd[j] == 0)
		{
			cars[i].carTurnAdd[j] = 1;	
		}
	}
}