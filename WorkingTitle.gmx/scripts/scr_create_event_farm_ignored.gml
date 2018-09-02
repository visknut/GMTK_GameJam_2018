/// scr_create_event_farm_ignored()

var _new_event = instance_create(0, 0, struct_event_farm_ignored);

// Adjust favour.
_new_event.favour_change = -1;
with (obj_kingdom)
{
    favours[CHAR_QUEEN] -= 1;
}

_new_event.message = scr_enqueue_message(CHAR_QUEEN, "TODO: event_farm_ignored");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
