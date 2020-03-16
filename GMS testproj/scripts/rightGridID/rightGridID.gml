/// @arg x
/// @arg y
/// @arg cGRIDSCALE
/// @arg obj

var gridX = argument0;
var gridY = argument1;
var cGRIDSCALE = argument2;
var object = argument3;

return instance_place((gridX + 1) * cGRIDSCALE, gridY * cGRIDSCALE, object)