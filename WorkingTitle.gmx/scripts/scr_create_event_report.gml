/// scr_create_event_report()

var _new_event = instance_create(0, 0, struct_event_report);
var _most_damage = BLUE_NAME;
var _total_damage, _damage_class;

with (obj_kingdom)
{
    if (yellow_damage > blue_damage || green_damage > blue_damage)
    {
        if (green_damage > yellow_damage)
            _most_damage = GREEN_NAME;
        else
            _most_damage = YELLOW_NAME;
    }
    _total_damage = yellow_damage + green_damage + blue_damage;
    
    if (_total_damage > 20)
    {
        _new_event.favour_change = -3;
        favour_general -= 3;
        _damage_class = 4;
    } else if (_total_damage > 10)
    {
        _new_event.favour_change = -2;
        favour_general -= 2;
        _damage_class = 3;
    } else if (_total_damage > 5)
    {
        _new_event.favour_change = -1;
        favour_general -= 1;
        _damage_class = 2;
    } else if (_total_damage > 1)
    {
        _new_event.favour_change = 0;
        _damage_class = 1;
    } else
    {   
        favour_general += 1;
        _new_event.favour_change = 1;
        _damage_class = 0;
    }
}


_new_event.message = scr_enqueue_message(CHAR_GENERAL,
"Good morning High Constable,"+
"it seems that yesterday did not bring the accursed enemies unto our doorstep." +
"That is a good thing, since that would have been " + general_total_damage_classes[_damage_class]);

with (obj_kingdom)
{
    ds_list_add(events, _new_event);
}
