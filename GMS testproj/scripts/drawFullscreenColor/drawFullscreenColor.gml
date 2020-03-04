/// @arg color
/// @arg [alpha]
/// @arg [bottomColor]

var color = argument[0];

// Overload arguments
var alpha = 1;				if argument_count > 1{ alpha = argument[1]; }
var bottomColor = color;	if argument_count > 2{ bottomColor = argument[2]; }

draw_set_alpha(alpha);
draw_rectangle_color(viewXView()-5, viewYView()-5, viewRight()+5, viewBottom()+5, color, color, bottomColor, bottomColor, false);
draw_set_alpha(1);