if (blinking <= 0){
	if (random(1) <= 2/ SLOMO_SECONDS){
		blinking += 1/SLOMO_SECONDS;
	}
}
else{
	blinking += 1/SLOMO_SECONDS;
	if (blinking >= 1){
		blinking = 0;
	}
};