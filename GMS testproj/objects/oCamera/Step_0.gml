if(instance_exists(instanceTarget)){
	x = lerp(x, instanceTarget.x, percent(10));
	y = lerp(y, instanceTarget.y+77, percent(10));
};

camera_set_view_pos(view_camera[0], x-viewWidth() * percent(50), y-viewHeight() * percent(50));