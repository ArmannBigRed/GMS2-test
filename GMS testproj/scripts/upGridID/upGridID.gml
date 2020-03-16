/// @arg x
/// @arg y
/// @arg cGRIDSCALE
/// @arg obj

var gridX = argument0;
var gridY = argument1;
var cGRIDSCALE = argument2;
var object = argument3;


return instance_place(gridX * cGRIDSCALE, (gridY - 1) * cGRIDSCALE, object)