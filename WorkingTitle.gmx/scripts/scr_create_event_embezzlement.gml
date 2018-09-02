/// scr_create_event_embezzlement()

var _new_event = instance_create(0, 0, struct_event_embezzlement);

// Pick amount.
var _amounts = ar(20, 40, 60, 80, 100);
_new_event.amount = _amounts[irandom(4)];

_new_event = scr_enqueue_message(_new_event, CHAR_CLERK, "TODO: event_embezzlement");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
