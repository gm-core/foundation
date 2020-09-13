/// @func _slice(array, start [, end])
/// @desc Creates a slice of array from start up to, but not including, end.
/// @param {Array} array The array to slice
/// @param {Integer} start Index to start the slice
/// @param {Integer} end(optional) Index up to which to make the slice, defaults to end of array.
/// @returns {Array} The sliced array
function _slice() {
	/*
	@example
	var myArray = [1, 2, 3, 4];
	var slicedArray = _slice(myArray, 1, 3);
	_is_equal([2, 3], slicedArray)
	// => true
	*/

	var result = [];
	var array = argument[0];
	var starti = argument[1];
	var endi = 0;

	if (argument_count == 3) {
		endi = argument[2];
	} else {
		endi = array_length(array);
	}

	for (var i = endi - 1; i >= starti; i--) {
		result[i-starti] = array[@ i];
	}

	return result;



}
