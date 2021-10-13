
//PAUSE FUNCTION

if(paused == false){
    instance_deactivate_all(true);
	paused = true;
}else{
    instance_activate_all();
	paused = false;
}