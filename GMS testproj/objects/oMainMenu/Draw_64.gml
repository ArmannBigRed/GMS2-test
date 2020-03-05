fontSet(fntHeader, fa_center, fa_middle);

#region Title backdrop
var gameSeconds		= 3*GAME_SECONDS_PASSED;

var textXDraw		= display_get_gui_width()*0.5+10*sin(5*gameSeconds);
var textYDraw		= 200+10*sin(7.8*gameSeconds);
var textRotation	= 10*sin(2.3*gameSeconds);

drawText(textXDraw, textYDraw, gameTitle, 1, c_softblue, textRotation);
#endregion


#region Title foreground
gameSeconds += 0.2;

var textXDraw		= display_get_gui_width()*0.5+10*sin(5*gameSeconds);
var textYDraw		= 200+10*sin(7.8*gameSeconds);
var textRotation	= 10*sin(2.3*gameSeconds);

drawText(textXDraw, textYDraw, gameTitle, 1, c_softyellow, textRotation);
#endregion


fontSet(fntRegular, fa_center, fa_middle);
var helperTextScale = 0.9+0.1*sin(16*GAME_SECONDS_PASSED)

drawText(guiCenterX(), guiHeight() * 0.75, "Press space to puzzle.", helperTextScale, c_white);