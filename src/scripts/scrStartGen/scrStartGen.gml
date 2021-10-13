function scrStartGen(){
	
	for(i = 0; i < numberOfCars; i++)
	{
		cars[i].x = 116;
		cars[i].y = 352;
		cars[i].alive = true;
		cars[i].image_angle = 90;
	}
	timer = 0;
}