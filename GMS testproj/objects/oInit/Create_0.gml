#region Game specific CONST

#region keyboard inputs
#macro c_spacebarpressed keyboard_check_pressed(vk_space)

#macro c_KeyA keyboard_check(ord("A"))
#macro c_KeyLeft keyboard_check(vk_left)

#macro c_KeyD keyboard_check(ord("D")) 
#macro c_KeyRight keyboard_check(vk_right)

#macro c_KeyW keyboard_check(ord("W")) 
#macro c_KeyUp keyboard_check(vk_up)

#macro c_KeyS keyboard_check(ord("S"))
#macro c_KeyDown keyboard_check(vk_down)
#endregion

#region Color CONST
#macro rgb make_color_rgb

#macro c_softblue make_color_rgb(32,105,255)
#macro c_softyellow make_color_rgb(255,200,0)
#macro c_softred make_color_rgb(255,64,0)
#macro c_softgreen make_color_rgb(167,255,0)
#endregion

#endregion


#region Init scripts
timeInit();
gridMoveInit();
gravityInit();
#endregion

//after init start the game:
room_goto(rMainMenu);