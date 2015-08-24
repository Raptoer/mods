
#include "script_component.hpp"
private ["_unit", "_dangerCausedBy", "_unitPos", "_height", "_dangerPos", "_objs", "_visible"];
_unit = _this select 0;
_dangerCausedBy = _this select 1;
_unitPos = eyePos _unit;

if(count _this > 2) then {
    _height =  _this select 2;
    _unitPos = [_unitPos select 0, _unitPos select 1, (((getPosASL _unit) select 2) + _height)];
};
_dangerPos = eyePos _dangerCausedBy;
_objs =  lineIntersectsWith [ _dangerPos, _unitPos];

_visible = true;

//format ["checking vis between %1, and %2, found %3", _dangerPos, _unitPos, _objs] call BIS_fnc_log;
{
    //format ["checking vis of %1", _x] call BIS_fnc_log;
    if( boundingCenter _x select 1 > GVAR(MIN_HEIGHT_OBJ_TO_CONSIDER)
            && _x != _unit && _x != _dangerCausedBy) then {
        _visible = false;
    }
} forEach _objs;

_visible;