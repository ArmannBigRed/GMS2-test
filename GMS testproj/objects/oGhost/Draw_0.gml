event_inherited();
squishUpdate();

if(z >= 0){
	rotation = lerp(rotation, 0, percent(35));	
}
else{
	rotation = lerp(rotation, 0, percent(5));
};

drawSprite(sprite_index, isBlinking(), x, y+z, xScale*squishXScale, squishYScale, rotation);
