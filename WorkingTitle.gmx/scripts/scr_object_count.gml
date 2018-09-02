/// scr_object_count(location [NORTH_EAST, NORTH_WEST, SOUTH_EAST, SOUTH_WEST], object)

var _x1 = argument[0];
var _y1 = argument[1];
var _x2 = argument[2];
var _y2 = argument[3];
var _object = argument[4];

var _count = 0;

switch (_location)
{
    case NORTH_EAST:
    {
        with (_object)
        {
            if (_palace.x > 360 && _palace.y < 272)
            {
                _count += 1;
            }
        }
    }
    case NORTH_WEST:
    {
        with (_object)
        {
            if (_palace.x < 360 && _palace.y < 272)
            {
                _count += 1;
            }
        }
    }
    case SOUTH_EAST:
    {
        with (_object)
        {
            if (_palace.x > 360 && _palace.y > 272)
            {
                _count += 1;
            }
        }
    }
    case SOUTH_WEST:
    {
        with (_object)
        {
            if (_palace.x < 360 && _palace.y > 272)
            {
                _count += 1;
            }
        }
    }
}

return _count;


