event_inherited();

blink();
squishUpdate();
drawSprite(sprite_index, isBlinking(), x, y+z, xScale*squishXScale, squishYScale, rotation);

if(z >= 0){
	rotation = lerp(rotation, 0, percent(35));	
}
else{
	rotation = lerp(rotation, 0, percent(5));
};