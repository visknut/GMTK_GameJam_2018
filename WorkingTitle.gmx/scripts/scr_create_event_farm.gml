/// scr_create_event_farm()

var _new_event = instance_create(0, 0, struct_event_farm);

// Pick location.
var _locations = ar(NORTH_WEST, NORTH_EAST, SOUTH_EAST, SOUTH_WEST);
_new_event.location = _locations[irandom(3)];

_new_event.old_count = scr_object_count(_new_event.location, obj_farm);

_new_event.message = scr_enqueue_message(CHAR_QUEEN, "TODO: event_farm");

with (obj_kingdom)
{
    ds_list_add(pending_events, _new_event);
    ds_list_add(events, _new_event);
}
