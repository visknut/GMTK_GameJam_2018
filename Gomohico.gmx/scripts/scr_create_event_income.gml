/// scr_create_event_income

var _new_event = instance_create(0, 0, struct_event_income);

// Pick amount.
var _enconomy_modifiers = ar(0.8, 0.9, 1, 1.1, 1.2);
_new_event.enconomy_modifier = _enconomy_modifiers[irandom(4)] + (instance_number((obj_farm) * 0.1));

var _favour_king, _favour_queen, _favour_diplomat, _favour_general;

with (obj_kingdom)
{
    _favour_king = favours[CHAR_KING];
    _favour_queen = favours[CHAR_QUEEN];
    _favour_diplomat = favours[CHAR_DIPLOMAT];
    _favour_general = favours[CHAR_GENERAL];

    _new_event.income_royal_donation = floor(_favour_king + _favour_queen * _new_event.enconomy_modifier);
    _new_event.income_war_chest = floor(_favour_general * 2 * _new_event.enconomy_modifier);
    _new_event.income_trade = floor(_favour_diplomat * 2 * _new_event.enconomy_modifier);
    _new_event.total = floor(_new_event.income_royal_donation + _new_event.income_war_chest + _new_event.income_trade);

    money += _new_event.total;

    _new_event = scr_enqueue_message(_new_event, CHAR_CLERK,
    "Godspeed, high constable!
    
    Today you will be able to spend a total of " + string(money) + " goldpieces, " +
    "due to the king and the queen gifting you a royal donation of " + string(_new_event.income_royal_donation) +
    " goldpieces, and due to the general and diplomat granting you a cut from the war chest and traderoutes of respectively " +
    string(_new_event.income_war_chest) +
    " and " + string(_new_event.income_trade) +
    " goldpieces before taxes.");

    ds_list_add(events, _new_event);
}
