/// scr_create_event_palace_built(number_built, location)

var _number_built = argument[0];
var _location = argument[1];
var _locations = ar("northwest", "northeast", "southeast", "southwest");

var _new_event = instance_create(0, 0, struct_event_palace_built);

// Adjust favour.
if (_number_built == 1)
{
    _new_event.favour_change = 1;
    with (obj_kingdom)
    {
        favours[CHAR_KING] += 1;
    }
    
    _new_event = scr_enqueue_message(_new_event, CHAR_KING, "I visited the new palace that you built in the "
    + _locations[_location] + " of our country. It was "
    + common_positive_adjective[irandom(array_length_1d(common_positive_adjective) -1)] + "!");
} else
{
    _new_event.favour_change = 2;
    with (obj_kingdom)
    {
        favours[CHAR_KING] += 2;
    }
    
    _new_event = scr_enqueue_message(_new_event, CHAR_KING, "I heard that you built multiple palaces in the "
    + _locations[_location] + " of our country. That is "
    + common_excited_adjective[irandom(array_length_1d(common_excited_adjective) -1)] + "!");
}

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
