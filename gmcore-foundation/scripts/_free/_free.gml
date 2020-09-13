/// @func _free(id [, ds_type])
/// @desc Frees a partial function from memory
/// @param {Real} resource The partial ID to free
/// @param {DS_TYPE} optionalType The type of resource to free
function _free() {
	/*
	@example
	var __something = _partial(someScript, 1);
	__something(2);
	_free(__something);

	*/

	var dsId = argument[0];
	var type;

	if (argument_count == 1) {
	    type = ds_type_map;
	} else {
	    type = argument[1];
	}

	if (_is_equal(type, "partial")) {
	    type = ds_type_map;
	}

	switch (type) {
	    case ds_type_map:
	        ds_map_destroy(dsId);
	        break;
	    case ds_type_list:
	        ds_list_destroy(dsId);
	        break;
	}
}
