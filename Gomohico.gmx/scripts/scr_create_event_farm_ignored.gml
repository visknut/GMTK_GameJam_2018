/// scr_create_event_farm_ignored()

var _new_event = instance_create(0, 0, struct_event_farm_ignored);

// Adjust favour.
_new_event.favour_change = -1;
scr_add_favour(CHAR_QUEEN, _new_event.favour_change);

_new_event = scr_enqueue_message(_new_event, CHAR_QUEEN, "How " 
    + pick(common_negative_adjective)
    + " that you did not follow my advice on building a farm for our people.");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
