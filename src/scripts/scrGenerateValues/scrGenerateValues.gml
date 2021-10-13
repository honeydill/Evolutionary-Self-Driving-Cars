// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function scrGenerateValues(){
	
	topCars = 15; //how many cars to keep
	for(k = 0; k < numberOfCars; k++) //clone the last 5 cars and put them in the first 5 cars
	{	
		for(j = 0; j < 9; j++)
			{
			if(k > numberOfCars - topCars)
			{
			//	cars[k].carSpeedMult[j] = cars[numberOfCars - (numberOfCars% topCars) - 1].carSpeedMult[j] + random_range(-20,20);
			//	cars[k].carTurnMult[j] = cars[numberOfCars - (numberOfCars % topCars) - 1].carTurnMult[j] + random_range(-20,20);
			}
			else
			{
				randomValue = random_range(0,100)
				if(randomValue < 2)//rare chance of huge mutation
				{
					cars[k].carSpeedMult[j] = cars[numberOfCars - (numberOfCars% topCars) - 1].carSpeedMult[j] + random_range(-1000,1000);
					cars[k].carTurnMult[j] = cars[numberOfCars - (numberOfCars % topCars) - 1].carTurnMult[j] + random_range(-1000,1000);
					cars[k].carSpeedAdd[j] = cars[numberOfCars - (numberOfCars% topCars) - 1].carSpeedAdd[j] + random_range(-1000,1000);
					cars[k].carTurnAdd[j] = cars[numberOfCars - (numberOfCars % topCars) - 1].carTurnAdd[j] + random_range(-1000,1000);
				}
				else if(randomValue < 7)//uncommon chance for big mutation
				{
					cars[k].carSpeedMult[j] = cars[numberOfCars - (numberOfCars% topCars) - 1].carSpeedMult[j] + random_range(-50,50);
					cars[k].carTurnMult[j] = cars[numberOfCars - (numberOfCars % topCars) - 1].carTurnMult[j] + random_range(-50,50);
					cars[k].carSpeedAdd[j] = cars[numberOfCars - (numberOfCars% topCars) - 1].carSpeedAdd[j] + random_range(-50,50);
					cars[k].carTurnAdd[j] = cars[numberOfCars - (numberOfCars % topCars) - 1].carTurnAdd[j] + random_range(-50,50);
				}
				else if(randomValue < 50)
				{
					cars[k].carSpeedMult[j] = cars[numberOfCars - (numberOfCars% topCars) - 1].carSpeedMult[j] + random_range(-10,10);
					cars[k].carTurnMult[j] = cars[numberOfCars - (numberOfCars % topCars) - 1].carTurnMult[j] + random_range(-10,10);
					cars[k].carSpeedAdd[j] = cars[numberOfCars - (numberOfCars% topCars) - 1].carSpeedAdd[j] + random_range(-10,10);
					cars[k].carTurnAdd[j] = cars[numberOfCars - (numberOfCars % topCars) - 1].carTurnAdd[j] + random_range(-10,10);
				}
			}
			if(cars[k].carSpeedMult[j] == 0)
			{
				cars[k].carSpeedMult[j] = 1;	
			}
			if(cars[k].carTurnMult[j] == 0)
			{
				cars[k].carTurnMult[j] = 1;	
			}
			if(cars[k].carSpeedAdd[j] == 0)
			{
				cars[k].carSpeedAdd[j] = 1;	
			}
			if(cars[k].carTurnAdd[j] == 0)
			{
				cars[k].carTurnAdd[j] = 1;	
			}
		}
	}
	scrStartGen();
}