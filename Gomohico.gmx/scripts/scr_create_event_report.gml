/// scr_create_event_report()

var _new_event1 = instance_create(0, 0, struct_event_report);
var _new_event2 = instance_create(0, 0, struct_event_report);
var _most_damage = "northeastern";
var _total_damage, _damage_class;

with (obj_kingdom)
{
    if (yellow_damage > blue_damage || green_damage > blue_damage)
    {
        if (green_damage > yellow_damage)
            _most_damage = "southern";
        else
            _most_damage = "western";
    }
    _total_damage = yellow_damage + green_damage + blue_damage;
    
    if (_total_damage > 40)
    {
        _new_event1.favour_change = -3;
        favours[CHAR_GENERAL] -= 3;
        _damage_class = 4;
    } else if (_total_damage > 20)
    {
        _new_event1.favour_change = -2;
        favours[CHAR_GENERAL] -= 2;
        _damage_class = 3;
    } else if (_total_damage > 10)
    {
        _new_event1.favour_change = -1;
        favours[CHAR_GENERAL] -= 1;
        _damage_class = 2;
    } else if (_total_damage > 5)
    {
        _new_event1.favour_change = 0;
        _damage_class = 1;
    } else
    {   
        favours[CHAR_GENERAL] += 1;
        _new_event1.favour_change = 1;
        _damage_class = 0;
    }

    _new_event1 = scr_enqueue_message(_new_event1, CHAR_GENERAL,
    "Good morning High Constable,#"+
    "it seems that yesterday " +
    pick(common_surprised_adverb) +
    " did not bring the " +
    pick(common_fiendish_adjective) +
    " enemies unto our doorstep.##" +
    
    "That is a " +
    pick(obj_kingdom.common_positive_adjective) +
    " thing, since that would have been " +
    general_total_damage_classes[_damage_class] + ".");
    
    
    _new_event2 = scr_enqueue_message(_new_event2, CHAR_GENERAL,
    pick(general_inspections) +
    ", I noticed that our " +
    _most_damage +
    " defense is clearly " +
    pick(general_subpar_nouns) +
    " when compared to our other fronts.##" +
    
    "I would advise you " +
    pick(common_accenting_adverb) +
    " to improve them, " +
    "as our enemies are sure to attack " +
    pick(common_soon_nouns) +
    ", with defenses this weak.");

    ds_list_add(events, _new_event1);
    ds_list_add(events, _new_event2);
}
