/// scr_create_event_embezzlement()

var _new_event = instance_create(0, 0, struct_event_embezzlement);

// Pick amount.
var _amounts = ar(20, 40, 60, 80, 100);
_new_event.amount = _amounts[irandom(4)];

_new_event = scr_enqueue_message(_new_event, CHAR_CLERK,
"One more thing, high constable-
This would be a good moment to think of your future.
If you give me " + string(_new_event.amount) + " goldcoins now, I will return them to you when you lose the job.");

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
