/// @arg objectID
/// @arg [x=0]
/// @arg [y=0]

var theObject = argument[0];
var spawnX = 0; if argument_count > 1 { spawnX = argument[1]; }
var spawnY = 0; if argument_count > 2 { spawnY = argument[2]; }

return instance_create_depth(spawnX,spawnY,0,theObject)