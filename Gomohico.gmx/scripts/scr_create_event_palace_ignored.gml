/// scr_create_event_palace_ignored()

var _new_event = instance_create(0, 0, struct_event_palace_ignored);

// Adjust favour.
_new_event.favour_change = -1;
with (obj_kingdom)
{
    favours[CHAR_KING] -= 1;

    _new_event = scr_enqueue_message(_new_event, CHAR_KING, "How " 
        + common_negative_adjective[irandom(array_length_1d(common_negative_adjective) - 1)] 
        + " that you did not follow my advice on building a palace.");

    ds_list_add(events, _new_event);
}
