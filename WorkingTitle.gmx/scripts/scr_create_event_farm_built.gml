/// scr_create_event_farm_built(number_built)

var _number_built = argument[0];

var _new_event = instance_create(0, 0, struct_event_farm_built);

// Adjust favour.
if (_number_built == 1)
{
    _new_event.favour_change = 1;
    with (obj_kingdom)
    {
        favour_queen += 1;
    }
    
    _new_event.message = scr_enqueue_message(CHAR_QUEEN, "TODO: event_farm_built(1)");
} else
{
    _new_event.favour_change = 2;
    with (obj_kingdom)
    {
        favour_queen += 2;
    }
    
    _new_event.message = scr_enqueue_message(CHAR_QUEEN, "TODO: event_farm_built(>1)");
}


with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
