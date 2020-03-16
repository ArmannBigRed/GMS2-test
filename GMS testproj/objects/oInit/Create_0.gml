#region Game specific CONST
#macro c_spacebarpressed keyboard_check_pressed(vk_space)
#endregion

#region Game specific GLOBALVAR
globalvar GRAVITY;	GRAVITY = 2500;
globalvar cGRIDSCALE;	cGRIDSCALE = 64;
#endregion

#region Init scripts
timeInit();
#endregion

#region Color CONST
#macro rgb make_color_rgb

#macro c_softblue make_color_rgb(32,105,255)
#macro c_softyellow make_color_rgb(255,200,0)
#macro c_softred make_color_rgb(255,64,0)
#macro c_softgreen make_color_rgb(167,255,0)
#endregion

//after init start the game:
room_goto(rMainMenu);