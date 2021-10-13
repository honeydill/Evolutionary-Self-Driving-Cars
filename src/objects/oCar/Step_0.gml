points = x;

/*
for(i = 0; i < array_length(line) - 1; i++)
{
	line[i].x = x;
	line[i].y = y;
	line[i].image_angle = image_angle +(45*i) + 90;
}
*/

/////////////////////////////////////////////////////
//wall detection for the 9 angles
WcollisionY = y;

NWWcollisionX = x;
NWWcollisionY = y;

NWcollisionX = x;
NWcollisionY = y;

NNWcollisionX = x;
NNWcollisionY = y;

NcollisionX = x;

NNEcollisionX = x;
NNEcollisionY = y;

NEcollisionX = x;
NEcollisionY = y;

NEEcollisionX = x;
NEEcollisionY = y;

EcollisionY = y;

while(position_meeting(x,WcollisionY,oWall) == false)
{
		WcollisionY++;
}

while(position_meeting(NWWcollisionX,NWWcollisionY,oWall) == false)
{
		NWWcollisionX++;
		NWWcollisionY++;
}

while(position_meeting(NWcollisionX,NWcollisionY,oWall) == false)
{
		NWcollisionX++;
		NWcollisionY++;
}

while(position_meeting(NNWcollisionX,NNWcollisionY,oWall) == false)
{
		NNWcollisionX++;
		NNWcollisionY++;
}

while(position_meeting(NcollisionX,y,oWall) == false)
{
		NcollisionX++;
}

while(position_meeting(NNEcollisionX,NNEcollisionY,oWall) == false)
{
		NNEcollisionX++;
		NNEcollisionX++;
		NNEcollisionY--;
}

while(position_meeting(NEcollisionX,NEcollisionY,oWall) == false)
{
		NEcollisionX++;
		NEcollisionY--;
}

while(position_meeting(NEEcollisionX,NEEcollisionY,oWall) == false)
{
		NEEcollisionX++;
		NEEcollisionY--;
		NEEcollisionY--;
}

while(position_meeting(x,EcollisionY,oWall) == false)
{
		EcollisionY--;
}
//end of wall detection
//////////////////////////////////////////////////////////////////////

//code for the self driving, 1-9 = directions left to front to right of the car clockwise
valueOne = WcollisionY - y;
valueTwo =  NWWcollisionX + NWWcollisionY - (x + y);
valueThree = NWcollisionX + NWcollisionY - (x + y);
valueFour =  NNWcollisionX + NNWcollisionY - (x + y);
valueFive = NcollisionX - x;
valueSix = NNEcollisionX - NNEcollisionY - (x + y);
valueSeven = NEcollisionX - NEcollisionY - (x + y);
valueEight = NEEcollisionX - NEEcollisionY - (x + y);
valueNine = -EcollisionY - y;

scrDivideByZero(); //make sure none of our values is 0
//closer walls = bigger numbers
AIturn = carTurnMult[0]/valueOne + carTurnMult[1]/valueTwo + carTurnMult[2]/valueThree + carTurnMult[3]/valueFour + carTurnMult[4]/valueFive + carTurnMult[5]/valueSix + carTurnMult[6]/valueSeven + carTurnMult[7]/valueEight + carTurnMult[8]/valueNine
AIspeed = carSpeedMult[0]/valueOne + carSpeedMult[1]/valueTwo + carSpeedMult[2]/valueThree + carSpeedMult[3]/valueFour + carSpeedMult[4]/valueFive + carSpeedMult[5]/valueSix + carSpeedMult[6]/valueSeven + carSpeedMult[7]/valueEight + carSpeedMult[8]/valueNine

//farther walls = bigger numbers
AIturn += valueOne/carTurnAdd[0] + valueTwo/carTurnAdd[1] + valueThree/carTurnAdd[2] + valueFour/carTurnAdd[3] + valueFive/carTurnAdd[4] + valueSix/carTurnAdd[5] + valueSeven/carTurnAdd[6] + valueEight/carTurnAdd[7] + valueNine/carTurnAdd[8]
AIspeed += valueOne/carSpeedAdd[0] + valueTwo/carSpeedAdd[1] + valueThree/carSpeedAdd[2] + valueFour/carSpeedAdd[3] + valueFive/carSpeedAdd[4] + valueSix/carSpeedAdd[5] + valueSeven/carSpeedAdd[6] + valueEight/carSpeedAdd[7] + valueNine/carSpeedAdd[8]

//mixed
//AIturn = carTurnMult[0]/valueOne + valueTwo/carTurnMult[1] + carTurnMult[2]/valueThree + carTurnMult[3]/valueFour + valueFive/carTurnMult[4] + carTurnMult[5]/valueSix + carTurnMult[6]/valueSeven + valueEight/carTurnMult[7] + carTurnMult[8]/valueNine
//AIspeed = carSpeedMult[0]/valueOne + valueTwo/carSpeedMult[1] + carSpeedMult[2]/valueThree + carSpeedMult[3]/valueFour + valueFive/carSpeedMult[4] + carSpeedMult[5]/valueSix + carSpeedMult[6]/valueSeven + valueEight/carSpeedMult[7] + carSpeedMult[8]/valueNine



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//new idea: cars have an angle they want to be at, and will turn to be at that angle, instead of (currently) they have a direction they want to turn

currAngle = image_angle

if(currAngle > 180) //get currAngle to be between -180 to 180
{
	currAngle = currAngle - 360;
}

turnDirection = AIturn - (currAngle - 90);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if(alive)
{
	if(turnDirection > 15)
	{
		turnDirection = 15
	}
	else if(turnDirection < -15)
	{
		turnDirection = -15
	}
	if(AIspeed > 15)
	{
		AIspeed = 15;
	}
	else if(AIspeed < -15)
	{
		AIspeed = -15;
	}
	image_angle = image_angle + turnDirection;
	x += lengthdir_x(AIspeed, image_angle+90);
	y += lengthdir_y(AIspeed, image_angle+90);
}