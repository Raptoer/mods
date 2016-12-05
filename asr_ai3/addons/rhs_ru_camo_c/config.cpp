#include "script_component.hpp"

class CfgPatches {
	class ADDON {
        addonRootClass = "rhs_c_weapons";
		units[] = {};
		weapons[] = {};
        ammo[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] = {
			QUOTE(MAIN_ADDON),
			"A3_Characters_F","A3_Weapons_F",
			"rhs_c_troops","rhs_c_weapons","rhs_cti_insurgents"
		};
		version = VERSION;
		author = "Robalo";
	};
};

PRELOAD_ADDONS;

#include "CfgWeapons.hpp"
#include "CfgVehicles.hpp"