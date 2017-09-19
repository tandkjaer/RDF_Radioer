if (!local player) exitWith {};

fn_classnames = compile preprocessFile "\RDF_Radioer\functions\fn_classnames.sqf";

if (!isClass(configFile/'CfgPatches'/'ace_interact_menu')) exitWith{};

fn_alle_items = compile preprocessFile "\RDF_Radioer\functions\fn_alle_items.sqf";

nul = [] execVM "\RDF_Radioer\scripts\init.sqf";