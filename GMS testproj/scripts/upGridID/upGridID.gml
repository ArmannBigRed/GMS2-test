/// @arg x
/// @arg y
/// @arg gridScale
/// @arg obj

var gridX = argument0;
var gridY = argument1;
var gridScale = argument2;
var object = argument3;


return instance_place(gridX * gridScale, (gridY - 1) * gridScale, object)