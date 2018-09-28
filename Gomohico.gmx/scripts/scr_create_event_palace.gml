/// scr_create_event_palace()

var _new_event = instance_create(0, 0, struct_event_palace);

// Pick location.
var _locations = ar(NORTH_WEST, NORTH_EAST, SOUTH_EAST, SOUTH_WEST);
var _location_names = ar("northwest", "northeast", "southeast", "southwest");
_new_event.location = _locations[irandom(3)];

_new_event.old_count = scr_object_count(_new_event.location, obj_palace);


_new_event = scr_enqueue_message(_new_event, CHAR_KING, "I need to get to know my country better."
    + "# Could you use some of your funds to built me a palace in the " 
    + _location_names[_new_event.location] + " part of our country?");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
    ds_list_add(pending_events, _new_event);
}
