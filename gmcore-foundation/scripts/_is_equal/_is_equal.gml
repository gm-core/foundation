/// @func _is_equal(valueA, valueB [, dsType])
/// @desc Checks if two values are equal, being safe about type and checking first-level children of ds_lists and ds_maps. Returns false on type inequality rather than throwing an error.
/// @param {*} firstValue First value to compare
/// @param {*} secondValue Second value to compare
/// @param {ds_type} dsType [Optional] If specified, assumes this type instead of inferring the type. Only specify this if using _is_equal for a ds
/// @returns {Boolean} true if the values are equal, false otherwise
function _is_equal() {
	/*
	@example
	_is_equal([1, 2, 3], [1, 2, 3]);
	// => true

	_is_equal("hello", 1);
	// => false

	var map = ds_map_create();
	ds_map_add(map, 'hello', 6);
	ds_map_add(map, 'world', 10);
	var map2 = ds_map_create();
	ds_map_add(map2, 'hello', 6);
	ds_map_add(map2, 'world', 10);
	_is_equal(map, map2, ds_type_map);
	// => true
	*/

	var compareA = argument[0];
	var compareB = argument[1];
	var type;

	if (argument_count == 3) {
	    type = argument[2];
	} else {
	    if (_type_of(compareA) != _type_of(compareB)) {
	        return false;
	    } else {
	        if (_type_of(compareA) == "array") {
	            if (array_length(compareA) != array_length(compareB)) {
	                return false;
	            }
            
	            for (var i = array_length(compareA) - 1; i >= 0; i--) {
	                if (!_is_equal(compareA[@ i], compareB[@ i])) {
	                    return false;
	                }
	            }
	            return true;
	        } else {
	            return compareA == compareB;
	        }
	    }
	}

	if (type == ds_type_map) {
	    var aKeys = _keys(compareA);
	    var bKeys = _keys(compareB);
	    if (!_is_equal(aKeys, bKeys)) {
	        return false;
	    }
    
	    for (var i = array_length(aKeys) - 1; i >= 0; i--) {
	        if (!_is_equal(ds_map_find_value(compareA, aKeys[i]), ds_map_find_value(compareB, aKeys[i]))) {
	            return false;
	        }
	    }
    
	    return true;
	} else if (type == ds_type_list) {
	    if (ds_list_size(compareA) != ds_list_size(compareB)) {
	        return false;
	    }
    
	    for (var i = ds_list_size(compareA); i >= 0 ; i--) {
	        if (!_is_equal(ds_list_find_value(compareA, i), ds_list_find_value(compareB, i))) {
	            return false;
	        }
	    }
    
	    return true;
    
	}




}
