/// scr_create_event_farm_built(number_built, location)

var _number_built = argument[0];
var _location = argument[1];
var _locations = ar("northwest", "northeast", "southeast", "southwest");

var _new_event = instance_create(0, 0, struct_event_farm_built);

with (obj_kingdom)
{
    // Adjust favour.
    if (_number_built == 1)
    {
        _new_event.favour_change = 1;
        favours[CHAR_QUEEN] += 1;
        
        _new_event = scr_enqueue_message(_new_event, CHAR_QUEEN, "I heard that you built a new farm in the "
        + _locations[_location] + " of our country. Very "
        + pick(common_positive_adjective) + "!");
    } else
    {
        _new_event.favour_change = 2;
        favours[CHAR_QUEEN] += 2;
        
        _new_event = scr_enqueue_message(_new_event, CHAR_QUEEN, "I heard that you built multiple farms in the "
        + _locations[_location] + " of our country. That is "
        + pick(common_excited_adjective) + "!");
    }

    ds_list_add(events, _new_event);
}
