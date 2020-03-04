fontSet(fntDefault, fa_center, fa_middle);

#region Backdrop
var gameSeconds		= 3*get_timer()/1000000;

var textXDraw		= display_get_gui_width()*0.5+10*sin(5*gameSeconds);
var textYDraw		= 200+10*sin(7.8*gameSeconds);
var textRotation	= 10*sin(2.3*gameSeconds);

draw_text_transformed_color(textXDraw, textYDraw, "PUZZLE PANIC", 1, 1, textRotation, c_softblue, c_softblue, c_softblue, c_softblue, 1);
#endregion

#region Foreground
gameSeconds += 0.2;

var textXDraw		= display_get_gui_width()*0.5+10*sin(5*gameSeconds);
var textYDraw		= 200+10*sin(7.8*gameSeconds);
var textRotation	= 10*sin(2.3*gameSeconds);

draw_text_transformed_color(textXDraw, textYDraw, "PUZZLE PANIC", 1, 1, textRotation, c_softyellow, c_softyellow, c_softyellow, c_softyellow, 1);
#endregion