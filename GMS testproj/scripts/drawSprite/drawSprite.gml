/// @arg sprite
/// @arg subimg
/// @arg x
/// @arg y
/// @arg [xscale=1]
/// @arg [yscale=1]
/// @arg [rot=0]
/// @arg [col=c_white]
/// @arg [alpha=1]


var sprite			= argument[0];
var subimg			= argument[1];
var spriteXDraw		= argument[2];
var spriteYDraw		= argument[3];


var spriteXScale	= 1;		if argument_count > 4 { spriteXScale = argument[4]; }
var spriteYScale	= 1;		if argument_count > 5 { spriteYScale = argument[5]; }
var spriteRot		= 0;		if argument_count > 6 { spriteRot = argument[6]; }
var spriteColor		= c_white	if argument_count > 7 { spriteColor = argument[7]; }
var spriteAlpha		= 1			if argument_count > 8 { spriteAlpha = argument[8]; }


draw_sprite_ext(sprite, subimg, spriteXDraw, spriteYDraw, spriteXScale, spriteYScale, spriteRot, spriteColor, spriteAlpha)