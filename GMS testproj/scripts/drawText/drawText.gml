/// @arg x
/// @arg y
/// @arg String
/// @arg Scale
/// @arg Color
/// @arg [Rotation=0]
/// @arg [Alpha=1]


var textXDraw		= argument[0];
var textYDraw		= argument[1];
var textString		= argument[2];
var textScale		= argument[3];
var textColor		= argument[4];


var textRotation	= 0; if argument_count > 5 { textRotation = argument[5]; }
var textAlpha		= 1; if argument_count > 6 { textAlpha = argument[6]; }

draw_text_transformed_color(textXDraw, textYDraw, textString, textScale, textScale, textRotation, textColor, textColor, textColor, textColor, textAlpha);