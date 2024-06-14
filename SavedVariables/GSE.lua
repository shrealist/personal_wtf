
GSEOptions = {
	["HideLoginMessage"] = false,
	["use2"] = false,
	["STANDARDFUNCS"] = "|cff55ddcc",
	["showGSEUsers"] = false,
	["UnfoundSpellIDs"] = {
	},
	["COMMENT"] = "|cff55cc55",
	["use14"] = true,
	["EQUALS"] = "|cffccddee",
	["use11"] = false,
	["sendDebugOutputToChatWindow"] = false,
	["debug"] = false,
	["use6"] = false,
	["CommandColour"] = "|cFF00FF00",
	["use1"] = false,
	["UNKNOWN"] = "|cffff6666",
	["CreateGlobalButtons"] = false,
	["DebugPrintModConditionsOnKeyPress"] = false,
	["saveAllMacrosLocal"] = true,
	["CONCAT"] = "|cffcc7777",
	["autoCreateMacroStubsGlobal"] = false,
	["sendDebugOutputToDebugOutput"] = false,
	["hideSoundErrors"] = false,
	["ErroneousSpellID"] = {
	},
	["clearUIErrors"] = false,
	["STRING"] = "|cff888888",
	["UseVerboseFormat"] = true,
	["use12"] = false,
	["NUMBER"] = "|cffffaa00",
	["TitleColour"] = "|cFFFF0000",
	["hideUIErrors"] = false,
	["initialised"] = true,
	["useTranslator"] = false,
	["DebugModules"] = {
		["Translator"] = false,
		["GUI"] = false,
		["Storage"] = false,
		["Editor"] = false,
		["API"] = false,
		["Versions"] = false,
		["Viewer"] = false,
		["Transmission"] = false,
	},
	["resetOOC"] = true,
	["MacroResetModifiers"] = {
		["Alt"] = false,
		["LeftControl"] = false,
		["LeftButton"] = false,
		["LeftAlt"] = false,
		["RighttButton"] = false,
		["RightAlt"] = false,
		["MiddleButton"] = false,
		["Button5"] = false,
		["Button4"] = false,
		["LeftShift"] = false,
		["Control"] = false,
		["Shift"] = false,
		["RightControl"] = false,
		["AnyMod"] = false,
		["RightShift"] = false,
	},
	["requireTarget"] = false,
	["EmphasisColour"] = "|cFFFFFF00",
	["AuthorColour"] = "|cFF00D1FF",
	["WOWSHORTCUTS"] = "|cffddaaff",
	["RealtimeParse"] = false,
	["deleteOrphansOnLogout"] = false,
	["ActiveSequenceVersions"] = {
	},
	["UnfoundSpells"] = {
	},
	["overflowPersonalMacros"] = false,
	["DisabledSequences"] = {
	},
	["INDENT"] = "|cffccaa88",
	["filterList"] = {
		["All"] = false,
		["Spec"] = true,
		["Global"] = true,
		["Class"] = true,
	},
	["DefaultDisabledMacroIcon"] = "Interface\\Icons\\INV_MISC_BOOK_08",
	["use13"] = true,
	["NormalColour"] = "|cFFFFFFFF",
	["AddInPacks"] = {
		["Samples"] = {
			["Version"] = "2203",
			["Name"] = "Samples",
			["SequenceNames"] = {
				"Assorted Sample Macros", -- [1]
			},
		},
	},
	["showGSEoocqueue"] = false,
	["setDefaultIconQuestionMark"] = true,
	["autoCreateMacroStubsClass"] = true,
	["KEYWORD"] = "|cff88bbdd",
}
GSELibrary = {
	{
		["new狂怒1805996376"] = {
			["Talents"] = "?,?,?,?,?,?,?,",
			["Default"] = 1,
			["Author"] = "Heady@AzerothCore",
			["SpecID"] = 1,
			["MacroVersions"] = {
				{
					"/click ElvUI_Bar1Button12", -- [1]
					"/cast Berserker Rage", -- [2]
					["PostMacro"] = {
					},
					["StepFunction"] = "Priority",
					["KeyRelease"] = {
					},
					["PreMacro"] = {
					},
					["KeyPress"] = {
					},
				}, -- [1]
			},
			["ManualIntervention"] = true,
		},
		["1805996376"] = {
			["Talents"] = "",
			["Default"] = 1,
			["SpecID"] = 1,
			["Author"] = "Heady@AzerothCore",
			["MacroVersions"] = {
				{
					"/click ElvUI_Bar1Button12", -- [1]
					"/cast Berserker Rage", -- [2]
					["PostMacro"] = {
					},
					["StepFunction"] = "Sequential",
					["KeyPress"] = {
					},
					["PreMacro"] = {
					},
					["KeyRelease"] = {
					},
				}, -- [1]
			},
			["ManualIntervention"] = true,
		},
	}, -- [1]
	{
	}, -- [2]
	nil, -- [3]
	{
	}, -- [4]
	nil, -- [5]
	{
	}, -- [6]
	nil, -- [7]
	{
		["new火焰1780802129"] = {
			["Talents"] = "?,?,?,?,?,?,?,",
			["Default"] = 1,
			["Author"] = "Lucy@AzerothCore",
			["SpecID"] = 8,
			["MacroVersions"] = {
				{
					"/say Hello", -- [1]
					["PostMacro"] = {
					},
					["KeyPress"] = {
					},
					["KeyRelease"] = {
					},
					["PreMacro"] = {
					},
					["StepFunction"] = "Sequential",
				}, -- [1]
			},
			["ManualIntervention"] = false,
		},
	}, -- [8]
	[0] = {
	},
}
