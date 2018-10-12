/// scr_create_event_view_palace_ignored()

var _new_event = instance_create(0, 0, struct_event_view_palace_ignored);

// Adjust favour.
_new_event.favour_change = -1;
scr_add_favour(CHAR_KING, _new_event.favour_change);

_new_event = scr_enqueue_message(_new_event, CHAR_KING, "TODO: event_view_palace_ignored");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
