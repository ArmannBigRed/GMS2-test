event_inherited();

drawSprite(sCoin, 0, x, lerp(y, y+upDown*percent(40), percent(25)));

if(floor(GAME_SECONDS_PASSED) mod 2 == 0){
	upDown += 1;	
}
else{
	upDown += -1;
};

