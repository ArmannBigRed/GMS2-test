if(instance_exists(instanceTarget)){
	x = lerp(x, instanceTarget.x, 0.1);
	y = lerp(y, instanceTarget.y+77, 0.1);
};

camera_set_view_pos(view_camera[0], x-viewWidth() * 0.5, y-viewHeight() * 0.5);