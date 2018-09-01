/// scr_build_structure(x, y)

var _x = argument[0];
var _y = argument[1];

switch (current_build)
{
    case BUILD_NONE:
        break;
    case BUILD_CATAPULT:
        with (obj_kingdom)
        {
           money -= PRICE_CATAPULT;
        }
        instance_create(_x, _y, obj_catapult);
        break;
    case BUILD_FIRETOWER:
        with (obj_kingdom)
        {
            money -= PRICE_FIRETOWER;
        }
        instance_create(_x, _y, obj_firetower);
        break;
    case BUILD_ARCHERTOWER:
        with (obj_kingdom)
        {
           money -= PRICE_ARCHER_TOWER;
        }
        instance_create(_x, _y, obj_archertower);
        break;
    case BUILD_PALACE:
        with (obj_kingdom)
        {
           money -= PRICE_PALACE;
        }
        instance_create(_x, _y, obj_palace);
        break;
}
