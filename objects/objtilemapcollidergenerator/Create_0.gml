var lay_id = layer_get_id("TileColliders");
var map_id = layer_tilemap_get_id(lay_id);

for(var i=0;i<room_width;i+=8)
{
	for(var j=0;j<room_height;j+=8)
	{ 
		if (tilemap_get_at_pixel(map_id,i,j))
		{ 
			instance_create_layer(i,j,"Colliders",obj_Wall); 
		} 
	}
}
var lay_id1 = layer_get_id("Glass");
var map_id1 = layer_tilemap_get_id(lay_id1);

for(var i=0;i<room_width;i+=8)
{
	for(var j=0;j<room_height;j+=8)
	{ 
		if (tilemap_get_at_pixel(map_id1,i,j))
		{ 
			instance_create_layer(i,j,"Glass1", objGlass); 
		} 
	}
}