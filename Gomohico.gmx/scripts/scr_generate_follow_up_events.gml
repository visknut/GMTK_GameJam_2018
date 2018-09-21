/// scr_generate_follow_up_events()

var _event;

with (obj_kingdom)
{
    for (var _i = 0; _i <  ds_list_size(pending_events); _i++)
    {
        _event = ds_list_find_value(pending_events, _i);
        switch (_event.object_index)
        {
            case struct_event_view_palace:
            {   
                // TODO
                break;
            }
            case struct_event_palace:
            {
                var _new_count = scr_object_count(_event.location, obj_palace);
                if (_new_count > _event.old_count)
                {
                    scr_create_event_palace_built(_new_count - _event.old_count, _event.location);
                } else
                {
                    scr_create_event_palace_ignored();
                }
                break;
            }
            case struct_event_farm:
            {
                var _new_count = scr_object_count(_event.location, obj_farm);
                if (_new_count > _event.old_count)
                {
                    scr_create_event_farm_built(_new_count - _event.old_count, _event.location);
                } else
                {
                    scr_create_event_farm_ignored();
                }
                break;
            }
        }
    }
}

// Clear the pending events for the new day.
ds_list_empty(pending_events);
