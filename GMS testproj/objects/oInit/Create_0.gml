#macro rgb make_color_rgb


#macro c_softblue make_color_rgb(32,105,255)
#macro c_softyellow make_color_rgb(255,200,0)
#macro c_softred make_color_rgb(255,64,0)
#macro c_softgreen make_color_rgb(167,255,0)

timeInit();

globalvar GRAVITY;	GRAVITY = 2500;

room_goto(rMainMenu);