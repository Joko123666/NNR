
var layer_id = layer_get_id("Fartiles");
var background_id = layer_background_get_id(layer_id);

layer_background_blend(background_id, close_gray);

var layer_id = layer_get_id("FarBackground");
var background_id = layer_background_get_id(layer_id);

layer_background_blend(background_id, far_gray);

