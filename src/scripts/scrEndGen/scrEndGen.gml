// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEndGen(){
	carLength = array_length(cars);
    for (i = 0; i < carLength-1; i++)
	{
		for (j = 0; j < carLength-i-1; j++)
		{
			if (cars[j].x > cars[j+1].x)
            {
              // swap arr[j+1] and arr[j]
			  temp = cars[j];
              cars[j] = cars[j+1];
              cars[j+1] = temp;
            }
		}    
	}
}

