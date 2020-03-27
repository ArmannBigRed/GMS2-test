updateWorldDepth();
if(shadowDraw){
	drawSprite(sShadow, 0, x, y+height*percent(50), shadowScale, shadowScale, 0, c_white, percent(25));
};

if(blinks){
	blink();
};

if(canSquish){
	squishUpdate();
};

if(z >= 0){
	rotation = lerp(rotation, 0, percent(35));	
}
else{
	rotation = lerp(rotation, 0, percent(5));
};

//flip drawn sprite depending on the input direction

