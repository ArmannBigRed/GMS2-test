fontSet(fntHeader, fa_center, fa_middle);

#region Backdrop
var gameSeconds		= 3*get_timer()/1000000;

var textXDraw		= display_get_gui_width()*0.5+10*sin(5*gameSeconds);
var textYDraw		= 200+10*sin(7.8*gameSeconds);
var textRotation	= 10*sin(2.3*gameSeconds);

drawText(textXDraw, textYDraw, gameTitle, 1, c_softblue, textRotation);
#endregion

#region Foreground
gameSeconds += 0.2;

var textXDraw		= display_get_gui_width()*0.5+10*sin(5*gameSeconds);
var textYDraw		= 200+10*sin(7.8*gameSeconds);
var textRotation	= 10*sin(2.3*gameSeconds);

drawText(textXDraw, textYDraw, gameTitle, 1, c_softyellow, textRotation);
#endregion


fontSet(fntRegular, fa_center, fa_middle);
var helperTextScale = 0.9+0.1*sin(16*get_timer()/1000000)

drawText(guiCenterX(), guiHeight() * 0.75, "Press space to puzzle.", helperTextScale, c_white);