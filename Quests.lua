-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

-------------------------------------------------------------------------------
-- Module namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local addon = private.addon
if not addon then
	return
end

local constants = addon.constants
local module = addon:GetModule(private.module_name)

local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeQuests()
	local function AddQuest(questID, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Quest:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = questID,
			item_list = {},
			location = zoneName,
			name = nil, -- Handled by memoizing table in the core.
		})
	end

	AddQuest(769,	Z.THUNDER_BLUFF,		44.1,	44.6,	"Horde")
	AddQuest(1582,	Z.DARNASSUS,			60.5,	37.3,	"Alliance")
	AddQuest(7493,	Z.ORGRIMMAR,			51.0,	76.5,	"Horde")
	AddQuest(7497,	Z.STORMWIND_CITY,		67.2,	85.5,	"Alliance")
	AddQuest(40176,	Z.DALARAN_BROKENISLES,		35.2,	29.2,	"Neutral")
	AddQuest(40178,	Z.DALARAN_BROKENISLES,		35.4,	29.8,	"Neutral")
	AddQuest(40179,	Z.DALARAN_BROKENISLES,		35.4,	29.8,	"Neutral")
	AddQuest(40183,	Z.DALARAN_BROKENISLES,		35.2,	29.2,	"Neutral")
	AddQuest(40185,	Z.HIGHMOUNTAIN,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(40186,	Z.HIGHMOUNTAIN,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(40191,	Z.HIGHMOUNTAIN,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(40192,	Z.HIGHMOUNTAIN,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(40198,	Z.DALARAN_BROKENISLES,		35.4,	29.8,	"Neutral")
	AddQuest(40203,	Z.HIGHMOUNTAIN,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(40204,	Z.HIGHMOUNTAIN,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(40205,	Z.HIGHMOUNTAIN,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(40214,	Z.SURAMAR,			26.6,	71.6,	"Neutral")
	AddQuest(41640,	Z.VALSHARAH,			54.6,	73.2,	"Neutral")
	AddQuest(41642,	Z.STORMHEIM,			60.2,	51.2,	"Neutral")
	AddQuest(41644,	Z.DALARAN_BROKENISLES,		33.4,	48.0,	"Neutral")
	AddQuest(43943,	Z.SURAMAR,			0.0,	0.0,	"Neutral") --Needs updating

	self.InitializeQuests = nil
end
