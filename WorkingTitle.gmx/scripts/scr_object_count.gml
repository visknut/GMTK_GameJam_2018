/// scr_object_count(location [NORTH_EAST, NORTH_WEST, SOUTH_EAST, SOUTH_WEST], object)

var _location = argument[0];
var _object = argument[1];

var _count = 0;

switch (_location)
{
    case NORTH_EAST:
    {
        with (_object)
        {
            if (x > 360 && y < 272)
            {
                _count += 1;
            }
        }
    }
    case NORTH_WEST:
    {
        with (_object)
        {
            if (x < 360 && y < 272)
            {
                _count += 1;
            }
        }
    }
    case SOUTH_EAST:
    {
        with (_object)
        {
            if (x > 360 && y > 272)
            {
                _count += 1;
            }
        }
    }
    case SOUTH_WEST:
    {
        with (_object)
        {
            if (x < 360 && y > 272)
            {
                _count += 1;
            }
        }
    }
}

return _count;


