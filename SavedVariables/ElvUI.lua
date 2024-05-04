
ElvDB = {
	["profileKeys"] = {
		["Shadow - AzerothCore"] = "Shadow - AzerothCore",
		["Hyper - AzerothCore"] = "Hyper - AzerothCore",
		["Heady - AzerothCore"] = "Heady - AzerothCore",
		["Bkk - AzerothCore"] = "Bkk - AzerothCore",
	},
	["gold"] = {
		["AzerothCore"] = {
			["Shadow"] = 32467518,
			["Heady"] = 1151058405,
			["Bkk"] = 33621832,
			["Hyper"] = 114226918,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["class"] = {
		["AzerothCore"] = {
			["Shadow"] = "ROGUE",
			["Heady"] = "WARRIOR",
			["Bkk"] = "MAGE",
			["Hyper"] = "DEATHKNIGHT",
		},
	},
	["global"] = {
		["general"] = {
			["locale"] = "zhCN",
			["UIScale"] = 0.800000011920929,
		},
		["nameplates"] = {
			["filters"] = {
				["ElvUI_Boss"] = {
				},
				["ElvUI_Totem"] = {
				},
			},
		},
		["afkEnabled"] = true,
	},
	["profiles"] = {
		["Shadow - AzerothCore"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["width"] = 222,
				},
				["experience"] = {
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 12,
					["width"] = 350,
				},
			},
			["general"] = {
				["totems"] = {
					["size"] = 50,
					["growthDirection"] = "HORIZONTAL",
					["spacing"] = 8,
				},
				["valuecolor"] = {
					["b"] = 0.41,
					["g"] = 0.96,
					["r"] = 1,
				},
				["watchFrameHeight"] = 400,
				["minimap"] = {
					["size"] = 220,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "TOPLEFT,ElvUF_Focus,BOTTOMLEFT,0,-1",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,96",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,248",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-5",
				["BuffsMover"] = "TOPRIGHT,MMHolder,TOPLEFT,-7,-1",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,418,-186",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_FocusMover"] = "BOTTOM,ElvUIParent,BOTTOM,341,59",
				["ElvBar_Totem"] = "BOTTOM,ElvUIParent,BOTTOM,0,55",
				["ElvUF_PetCastbarMover"] = "TOPLEFT,ElvUF_Pet,BOTTOMLEFT,0,-1",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-4",
				["ExperienceBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,43",
				["ElvTooltipMover"] = "BOTTOMRIGHT,RightChatToggleButton,BOTTOMRIGHT,0,0",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,341,138",
				["ElvBar_Pet"] = "RIGHT,ElvUI_Bar4,LEFT,-4,0",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-3",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,-1,-96",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-340,99",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,1,190",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,4",
				["TimeManagerFrameMover"] = "TOPRIGHT,UIParent,TOPRIGHT,45,-170",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-246",
				["ElvUIBagMover"] = "BOTTOMRIGHT,RightChatPanel,BOTTOMRIGHT,0,28",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-1,-36",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,1,138",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-92,57",
				["ElvUIBankMover"] = "BOTTOMLEFT,LeftChatPanel,BOTTOMLEFT,0,28",
				["TempEnchantMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-257",
				["PvPMover"] = "TOP,ElvUIParent,TOP,0,-4",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-163,-325",
				["BNETMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-274",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,769",
				["ArenaHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,RIGHT,-105,-165",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,341,99",
				["ElvUF_TargetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,242",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-186",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,RIGHT,-105,-165",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,485,4",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-340,138",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,248",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-1,-18",
				["DebuffsMover"] = "BOTTOMRIGHT,MMHolder,BOTTOMLEFT,-7,1",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-247",
			},
			["tooltip"] = {
				["healthBar"] = {
					["height"] = 12,
					["fontOutline"] = "MONOCHROMEOUTLINE",
				},
				["fontSize"] = 10,
			},
			["auras"] = {
				["buffs"] = {
					["countFontSize"] = 10,
					["size"] = 40,
				},
				["debuffs"] = {
					["countFontSize"] = 10,
					["size"] = 40,
				},
			},
			["unitframe"] = {
				["thinBorders"] = true,
				["smoothbars"] = true,
				["colors"] = {
					["auraBarBuff"] = {
						["b"] = 0.43,
						["g"] = 0.61,
						["r"] = 0.78,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["units"] = {
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["boss"] = {
						["infoPanel"] = {
							["height"] = 17,
						},
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["width"] = 246,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["party"] = {
						["height"] = 74,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
						["width"] = 231,
						["power"] = {
							["height"] = 13,
						},
					},
					["raid"] = {
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "PT Sans Narrow",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["infoPanel"] = {
							["enable"] = true,
						},
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["xOffset"] = 2,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["width"] = 92,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["height"] = 22,
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 40,
							["width"] = 407,
							["insideInfoPanel"] = false,
						},
						["height"] = 82,
						["buffs"] = {
							["perrow"] = 7,
						},
						["classbar"] = {
							["height"] = 14,
						},
						["aurabar"] = {
							["height"] = 26,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
					},
					["focus"] = {
						["width"] = 270,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 270,
						},
					},
					["target"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["enable"] = false,
							["maxDuration"] = 0,
							["attachTo"] = "FRAME",
							["perrow"] = 7,
						},
						["power"] = {
							["height"] = 22,
							["attachTextTo"] = "InfoPanel",
						},
						["disableMouseoverGlow"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["frequentUpdates"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 82,
						["orientation"] = "LEFT",
						["buffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["perrow"] = 7,
						},
						["castbar"] = {
							["height"] = 40,
							["width"] = 407,
							["insideInfoPanel"] = false,
						},
						["aurabar"] = {
							["height"] = 26,
						},
					},
					["arena"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 270,
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["disableTargetGlow"] = false,
						["castbar"] = {
							["iconSize"] = 32,
							["width"] = 270,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 270,
					},
				},
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 8,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 50,
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar6"] = {
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 9,
					["buttonspacing"] = 1,
					["buttonsize"] = 38,
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["buttonsize"] = 50,
					["buttons"] = 8,
				},
				["bar4"] = {
					["enabled"] = false,
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar5"] = {
					["enabled"] = false,
					["visibility"] = "[vehicleui] hide; show",
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "tank",
			["bags"] = {
				["bankSize"] = 42,
				["bagSize"] = 42,
				["bankWidth"] = 472,
				["bagWidth"] = 472,
			},
			["chat"] = {
				["panelHeight"] = 236,
				["panelColorConverted"] = true,
				["fontSize"] = 10,
				["panelWidth"] = 472,
			},
		},
		["Hyper - AzerothCore"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["width"] = 222,
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
				},
				["experience"] = {
					["width"] = 180,
					["orientation"] = "HORIZONTAL",
					["textSize"] = 12,
					["height"] = 10,
				},
			},
			["currentTutorial"] = 1,
			["general"] = {
				["fontSize"] = 14,
				["afk"] = false,
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["size"] = 220,
				},
				["backdropfadecolor"] = {
					["a"] = 0.69,
					["r"] = 0.05098039215686274,
					["g"] = 0.05098039215686274,
					["b"] = 0.05098039215686274,
				},
				["valuecolor"] = {
					["r"] = 0.996078431372549,
					["g"] = 0.4823529411764706,
					["b"] = 0.1725490196078431,
				},
				["threat"] = {
					["textSize"] = 14,
				},
				["topPanel"] = false,
				["watchFrameHeight"] = 400,
				["watchFrameAutoHide"] = false,
				["font"] = "聊天",
				["totems"] = {
					["spacing"] = 8,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,-20",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-11,145",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,-215",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-130",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-229,-4",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-7,430",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_FocusMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,0",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-3",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,286,1",
				["TimeManagerFrameMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-5,209",
				["ElvBar_Totem"] = "BOTTOM,ElvUIParent,BOTTOM,0,55",
				["ElvUF_PetCastbarMover"] = "TOPLEFT,ElvUF_Pet,BOTTOMLEFT,0,-1",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,272,-109",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["ExperienceBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-91",
				["ElvTooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,47",
				["ElvUF_TargetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,185,-32",
				["ElvBar_Pet"] = "BOTTOM,ElvUIParent,BOTTOM,100,100",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,25",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-227,-269",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,485,4",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,35,66",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,-177,32",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-222,-324",
				["PvPMover"] = "TOP,ElvUIParent,TOP,-177,0",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-317,271",
				["ElvUF_TargetTargetTargetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,-54",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-1,-36",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,169,31",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,142,277",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,84,0",
				["TempEnchantMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-257",
				["ArenaHeaderMover"] = "TOP,ElvUIParent,TOP,141,-312",
				["ElvUF_TargetTargetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,-34",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["ShiftAB"] = "BOTTOM,ElvUIParent,BOTTOM,-129,97",
				["BNETMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,185",
				["ElvUIBankMover"] = "BOTTOMLEFT,LeftChatPanel,BOTTOMLEFT,0,28",
				["ElvUF_TargetCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,184,-84",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-246",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1132,735",
				["BossHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-284",
				["ElvUF_PetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-196,119",
				["ElvUF_PlayerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-31",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,1,-314",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-16,-150",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,199,-199",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,479,957",
			},
			["bags"] = {
				["junkIcon"] = true,
				["bankSize"] = 35,
				["countFontSize"] = 12,
				["itemLevelFontSize"] = 12,
				["bagWidth"] = 357,
				["countFont"] = "聊天",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["itemLevelFont"] = "聊天",
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 35,
				["bankWidth"] = 472,
				["itemLevelFontOutline"] = "OUTLINE",
			},
			["chat"] = {
				["tabFont"] = "聊天",
				["separateSizes"] = true,
				["panelHeightRight"] = 50,
				["font"] = "聊天",
				["panelWidth"] = 285,
				["fontSize"] = 10,
				["tabFontSize"] = 14,
				["panelColorConverted"] = true,
				["panelHeight"] = 236,
				["panelWidthRight"] = 310,
				["panelBackdrop"] = "LEFT",
			},
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 1,
					["countFontSize"] = 10,
					["verticalSpacing"] = 14,
				},
				["buffs"] = {
					["horizontalSpacing"] = 1,
					["countFontSize"] = 10,
					["verticalSpacing"] = 14,
				},
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["font"] = "聊天",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["enable"] = true,
						["colorOverride"] = "FORCE_ON",
						["power"] = {
							["enable"] = false,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 80,
						["height"] = 20,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["colorOverride"] = "FORCE_ON",
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 80,
						["height"] = 20,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["disableTargetGlow"] = false,
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 14,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["width"] = 270,
							["iconSize"] = 32,
						},
					},
					["arena"] = {
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["colorOverride"] = "FORCE_ON",
						["health"] = {
							["frequentUpdates"] = true,
							["position"] = "LEFT",
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][curhp]",
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["power"] = {
							["text_format"] = "[powercolor][curpp]",
							["height"] = 22,
							["attachTextTo"] = "Power",
						},
						["disableMouseoverGlow"] = true,
						["width"] = 180,
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 180,
							["height"] = 20,
						},
						["height"] = 50,
						["orientation"] = "LEFT",
					},
					["party"] = {
						["height"] = 30,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
						["power"] = {
							["height"] = 13,
						},
						["width"] = 60,
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
					},
					["focus"] = {
						["castbar"] = {
							["width"] = 80,
							["height"] = 10,
						},
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 20,
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["name"] = {
							["position"] = "BOTTOMLEFT",
							["yOffset"] = 1,
						},
						["height"] = 30,
						["visibility"] = "[@raid6,noexists] hide;show",
						["rdebuffs"] = {
							["xOffset"] = 30,
							["yOffset"] = 25,
							["font"] = "PT Sans Narrow",
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["power"] = {
							["xOffset"] = 0,
						},
						["width"] = 50,
						["health"] = {
							["frequentUpdates"] = true,
							["yOffset"] = 0,
						},
						["colorOverride"] = "FORCE_ON",
					},
					["boss"] = {
						["debuffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = -16,
							["numrows"] = 1,
							["maxDuration"] = 300,
						},
						["enable"] = false,
						["width"] = 246,
						["infoPanel"] = {
							["height"] = 17,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["height"] = 60,
						["buffs"] = {
							["sizeOverride"] = 27,
							["yOffset"] = 16,
							["maxDuration"] = 300,
						},
						["castbar"] = {
							["width"] = 246,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["colorOverride"] = "FORCE_ON",
						["classbar"] = {
							["height"] = 14,
						},
						["aurabar"] = {
							["enable"] = false,
						},
						["castbar"] = {
							["insideInfoPanel"] = false,
							["width"] = 200,
							["height"] = 20,
						},
						["healPrediction"] = {
							["enable"] = false,
						},
						["disableMouseoverGlow"] = true,
						["width"] = 180,
						["name"] = {
							["attachTextTo"] = "Power",
							["position"] = "RIGHT",
							["text_format"] = "[level]",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][curhp]",
						},
						["power"] = {
							["xOffset"] = 0,
							["attachTextTo"] = "Power",
							["text_format"] = "[powercolor][curpp]",
							["position"] = "LEFT",
							["height"] = 20,
						},
						["height"] = 60,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["enable"] = true,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
						},
					},
				},
				["smoothbars"] = true,
				["fontOutline"] = "NONE",
				["thinBorders"] = true,
			},
			["datatexts"] = {
				["fontSize"] = 14,
				["panels"] = {
					["RightChatDataPanel"] = {
						["right"] = "Bags",
						["left"] = "Time",
						["middle"] = "Gold",
					},
					["LeftChatDataPanel"] = {
						["middle"] = "Attack Power",
					},
				},
				["font"] = "聊天",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 10,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 31,
					["visibility"] = "[vehicleui] hide; show",
				},
				["barPet"] = {
					["buttonsPerRow"] = 10,
				},
				["backdropSpacingConverted"] = true,
				["microbar"] = {
					["enabled"] = true,
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["buttonsize"] = 35,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 11,
					["buttonspacing"] = 1,
					["buttonsize"] = 31,
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar5"] = {
					["buttons"] = 12,
					["buttonsPerRow"] = 4,
					["buttonsize"] = 25,
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 30,
					["visibility"] = "[vehicleui] hide; show",
				},
				["stanceBar"] = {
					["buttons"] = 5,
					["buttonsPerRow"] = 5,
				},
				["bar4"] = {
					["buttonsPerRow"] = 4,
					["buttonsize"] = 25,
					["visibility"] = "[vehicleui] hide; show",
				},
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 1,
				["threat"] = {
					["badScale"] = 1,
					["goodScale"] = 1,
				},
				["units"] = {
					["FRIENDLY_PLAYER"] = {
						["health"] = {
							["height"] = 5,
							["width"] = 80,
						},
						["castbar"] = {
							["width"] = 80,
						},
					},
					["TARGET"] = {
						["arrowSize"] = 15,
					},
					["FRIENDLY_NPC"] = {
						["castbar"] = {
							["width"] = 80,
						},
						["health"] = {
							["height"] = 5,
							["width"] = 80,
						},
					},
					["ENEMY_PLAYER"] = {
						["castbar"] = {
							["width"] = 80,
							["height"] = 5,
						},
						["health"] = {
							["height"] = 5,
							["text"] = {
								["enable"] = true,
							},
							["width"] = 80,
						},
					},
					["ENEMY_NPC"] = {
						["castbar"] = {
							["width"] = 80,
							["height"] = 5,
						},
						["eliteIcon"] = {
							["enable"] = true,
						},
						["health"] = {
							["height"] = 5,
							["text"] = {
								["fontSize"] = 10,
								["enable"] = true,
							},
							["width"] = 80,
						},
					},
				},
				["targetScale"] = 1,
			},
			["tooltip"] = {
				["fontSize"] = 10,
				["healthBar"] = {
					["fontOutline"] = "MONOCHROMEOUTLINE",
					["height"] = 12,
				},
			},
			["layoutSet"] = "tank",
		},
		["Heady - AzerothCore"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["width"] = 222,
				},
				["experience"] = {
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 12,
					["width"] = 180,
				},
			},
			["currentTutorial"] = 12,
			["general"] = {
				["totems"] = {
					["spacing"] = 8,
					["growthDirection"] = "HORIZONTAL",
					["size"] = 50,
				},
				["fontSize"] = 14,
				["topPanel"] = false,
				["afk"] = false,
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["size"] = 220,
				},
				["watchFrameAutoHide"] = false,
				["font"] = "聊天",
				["backdropfadecolor"] = {
					["a"] = 0.69,
					["r"] = 0.05098039215686274,
					["g"] = 0.05098039215686274,
					["b"] = 0.05098039215686274,
				},
				["valuecolor"] = {
					["r"] = 0.996078431372549,
					["g"] = 0.4823529411764706,
					["b"] = 0.1725490196078431,
				},
				["threat"] = {
					["textSize"] = 14,
				},
				["watchFrameHeight"] = 400,
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,-20",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-11,145",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,-215",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-130",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-229,-4",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-7,430",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_FocusMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,0",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,479,957",
				["ElvBar_Totem"] = "BOTTOM,ElvUIParent,BOTTOM,0,55",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-16,-150",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,286,1",
				["ElvUF_PetCastbarMover"] = "TOPLEFT,ElvUF_Pet,BOTTOMLEFT,0,-1",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,272,-109",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,1,-314",
				["ExperienceBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-91",
				["ElvTooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,47",
				["ElvUF_TargetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,185,-32",
				["ElvBar_Pet"] = "BOTTOM,ElvUIParent,BOTTOM,100,100",
				["ElvUF_PetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-196,119",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-227,-269",
				["ElvUF_PlayerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-31",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,35,66",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,-177,32",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-222,-324",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1132,735",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-317,271",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,142,277",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-1,-36",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,169,31",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-246",
				["ElvUF_TargetCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,184,-84",
				["TempEnchantMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-257",
				["ElvUIBankMover"] = "BOTTOMLEFT,LeftChatPanel,BOTTOMLEFT,0,28",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["BNETMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,185",
				["ShiftAB"] = "BOTTOM,ElvUIParent,BOTTOM,-129,97",
				["ElvUF_TargetTargetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,-34",
				["ArenaHeaderMover"] = "TOP,ElvUIParent,TOP,141,-312",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,84,0",
				["ElvUF_TargetTargetTargetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,-54",
				["PvPMover"] = "TOP,ElvUIParent,TOP,-177,0",
				["BossHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-284",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,485,4",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,25",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["TimeManagerFrameMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-5,209",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,199,-199",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-3",
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "聊天",
				["itemLevelFont"] = "聊天",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["countFontOutline"] = "OUTLINE",
				["bankSize"] = 35,
				["itemLevelFontSize"] = 12,
				["itemLevelFontOutline"] = "OUTLINE",
				["countFontSize"] = 12,
				["bagWidth"] = 357,
				["bagSize"] = 35,
				["bankWidth"] = 472,
			},
			["auras"] = {
				["debuffs"] = {
					["countFontSize"] = 10,
					["verticalSpacing"] = 14,
					["horizontalSpacing"] = 1,
				},
				["buffs"] = {
					["countFontSize"] = 10,
					["verticalSpacing"] = 14,
					["horizontalSpacing"] = 1,
				},
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["fontOutline"] = "NONE",
				["font"] = "聊天",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
						["enable"] = true,
						["height"] = 20,
						["colorOverride"] = "FORCE_ON",
						["width"] = 80,
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 20,
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["disableTargetGlow"] = false,
						["castbar"] = {
							["iconSize"] = 32,
							["width"] = 270,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 270,
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["arena"] = {
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["target"] = {
						["power"] = {
							["height"] = 22,
							["text_format"] = "[powercolor][curpp]",
							["attachTextTo"] = "Power",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 180,
						["castbar"] = {
							["height"] = 20,
							["insideInfoPanel"] = false,
							["width"] = 180,
						},
						["health"] = {
							["xOffset"] = 0,
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][curhp]",
							["position"] = "LEFT",
						},
						["disableMouseoverGlow"] = true,
						["height"] = 50,
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["orientation"] = "LEFT",
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["castbar"] = {
							["height"] = 20,
							["insideInfoPanel"] = false,
							["width"] = 200,
						},
						["colorOverride"] = "FORCE_ON",
						["healPrediction"] = {
							["enable"] = false,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
						},
						["width"] = 180,
						["disableMouseoverGlow"] = true,
						["name"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[level]",
							["position"] = "RIGHT",
						},
						["health"] = {
							["xOffset"] = 0,
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][curhp]",
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "LEFT",
							["xOffset"] = 0,
							["text_format"] = "[powercolor][curpp]",
							["height"] = 20,
						},
						["height"] = 60,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["enable"] = true,
						},
						["classbar"] = {
							["height"] = 14,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
					},
					["focus"] = {
						["height"] = 20,
						["castbar"] = {
							["height"] = 10,
							["width"] = 80,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["width"] = 80,
					},
					["assist"] = {
						["enable"] = false,
					},
					["raid"] = {
						["power"] = {
							["xOffset"] = 0,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "PT Sans Narrow",
							["yOffset"] = 25,
							["size"] = 30,
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["position"] = "BOTTOMLEFT",
							["yOffset"] = 1,
						},
						["width"] = 50,
						["height"] = 30,
						["health"] = {
							["frequentUpdates"] = true,
							["yOffset"] = 0,
						},
						["visibility"] = "[@raid6,noexists] hide;show",
						["colorOverride"] = "FORCE_ON",
					},
					["party"] = {
						["height"] = 30,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
						["power"] = {
							["height"] = 13,
						},
						["width"] = 60,
					},
					["boss"] = {
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["enable"] = false,
						["width"] = 246,
						["infoPanel"] = {
							["height"] = 17,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
					},
				},
			},
			["datatexts"] = {
				["fontSize"] = 14,
				["panels"] = {
					["RightChatDataPanel"] = {
						["right"] = "Bags",
						["left"] = "Time",
						["middle"] = "Gold",
					},
					["LeftChatDataPanel"] = {
						["middle"] = "Attack Power",
					},
				},
				["font"] = "聊天",
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 10,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 31,
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsize"] = 30,
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 11,
					["buttonspacing"] = 1,
					["buttonsize"] = 31,
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["buttonsize"] = 35,
				},
				["bar5"] = {
					["buttonsize"] = 25,
					["buttonsPerRow"] = 4,
					["visibility"] = "[vehicleui] hide; show",
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
				["barPet"] = {
					["buttonsPerRow"] = 10,
				},
				["stanceBar"] = {
					["buttons"] = 5,
					["buttonsPerRow"] = 5,
				},
				["microbar"] = {
					["enabled"] = true,
				},
				["bar4"] = {
					["buttonsPerRow"] = 4,
					["buttonsize"] = 25,
					["visibility"] = "[vehicleui] hide; show",
				},
			},
			["layoutSet"] = "tank",
			["tooltip"] = {
				["healthBar"] = {
					["height"] = 12,
					["fontOutline"] = "MONOCHROMEOUTLINE",
				},
				["fontSize"] = 10,
			},
			["nameplates"] = {
				["nonTargetTransparency"] = 1,
				["threat"] = {
					["badScale"] = 1,
					["goodScale"] = 1,
				},
				["targetScale"] = 1,
				["units"] = {
					["FRIENDLY_PLAYER"] = {
						["health"] = {
							["height"] = 5,
							["width"] = 80,
						},
						["castbar"] = {
							["width"] = 80,
						},
					},
					["TARGET"] = {
						["arrowSize"] = 15,
					},
					["FRIENDLY_NPC"] = {
						["health"] = {
							["height"] = 5,
							["width"] = 80,
						},
						["castbar"] = {
							["width"] = 80,
						},
					},
					["ENEMY_PLAYER"] = {
						["health"] = {
							["height"] = 5,
							["text"] = {
								["enable"] = true,
							},
							["width"] = 80,
						},
						["castbar"] = {
							["height"] = 5,
							["width"] = 80,
						},
					},
					["ENEMY_NPC"] = {
						["castbar"] = {
							["height"] = 5,
							["width"] = 80,
						},
						["health"] = {
							["height"] = 5,
							["text"] = {
								["enable"] = true,
								["fontSize"] = 10,
							},
							["width"] = 80,
						},
						["eliteIcon"] = {
							["enable"] = true,
						},
					},
				},
			},
			["chat"] = {
				["fontSize"] = 10,
				["tabFont"] = "聊天",
				["separateSizes"] = true,
				["tabFontSize"] = 14,
				["panelHeightRight"] = 50,
				["font"] = "聊天",
				["panelHeight"] = 236,
				["panelWidth"] = 285,
				["panelWidthRight"] = 310,
				["panelColorConverted"] = true,
				["panelBackdrop"] = "LEFT",
			},
		},
		["Bkk - AzerothCore"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
					["height"] = 10,
					["orientation"] = "HORIZONTAL",
					["width"] = 222,
				},
				["experience"] = {
					["orientation"] = "HORIZONTAL",
					["height"] = 10,
					["textSize"] = 12,
					["width"] = 180,
				},
			},
			["currentTutorial"] = 6,
			["general"] = {
				["totems"] = {
					["size"] = 50,
					["growthDirection"] = "HORIZONTAL",
					["spacing"] = 8,
				},
				["fontSize"] = 14,
				["topPanel"] = false,
				["afk"] = false,
				["autoRepair"] = "PLAYER",
				["minimap"] = {
					["size"] = 220,
				},
				["watchFrameAutoHide"] = false,
				["font"] = "聊天",
				["backdropfadecolor"] = {
					["a"] = 0.69,
					["r"] = 0.05098039215686274,
					["g"] = 0.05098039215686274,
					["b"] = 0.05098039215686274,
				},
				["valuecolor"] = {
					["r"] = 0.996078431372549,
					["g"] = 0.4823529411764706,
					["b"] = 0.1725490196078431,
				},
				["watchFrameHeight"] = 400,
				["threat"] = {
					["textSize"] = 14,
				},
			},
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,-20",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-11,145",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,-110",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-130",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-229,-4",
				["MirrorTimer3Mover"] = "TOP,MirrorTimer2,BOTTOM,0,0",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,-1,293",
				["LootFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-7,430",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,737",
				["ElvUF_FocusMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,0",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-3",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,286,1",
				["ElvBar_Totem"] = "BOTTOM,ElvUIParent,BOTTOM,0,55",
				["ElvUF_PetCastbarMover"] = "TOPLEFT,ElvUF_Pet,BOTTOMLEFT,0,-1",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,272,-109",
				["TimeManagerFrameMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-5,209",
				["ExperienceBarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-91",
				["ElvTooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-141,61",
				["ElvUF_TargetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,185,-32",
				["ElvBar_Pet"] = "BOTTOM,ElvUIParent,BOTTOM,-5,97",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,482",
				["MirrorTimer1Mover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-227,-269",
				["ElvUF_PlayerMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-31",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-177,60",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,184,60",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,25",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,77,0",
				["ElvAB_4"] = "BOTTOM,ElvUIParent,BOTTOM,181,19",
				["PvPMover"] = "TOP,ElvUIParent,TOP,-177,0",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,-1,-36",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-202,30",
				["ElvUF_TargetTargetTargetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,-54",
				["WatchFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-222,-324",
				["TempEnchantMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-257",
				["ArenaHeaderMover"] = "TOP,ElvUIParent,TOP,141,-312",
				["ElvUF_TargetTargetMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,366,-34",
				["BNETMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,185",
				["ShiftAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,284,96",
				["MirrorTimer2Mover"] = "TOP,MirrorTimer1,BOTTOM,0,0",
				["ElvUIBankMover"] = "BOTTOMLEFT,LeftChatPanel,BOTTOMLEFT,0,28",
				["ElvUF_TargetCastbarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,184,-84",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-3,-246",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1132,735",
				["BossHeaderMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,299,-284",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,485,4",
				["ElvUF_PetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-196,119",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,0,-109",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,-16,-150",
				["DebuffsMover"] = "TOP,ElvUIParent,TOP,199,-199",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,479,957",
			},
			["bags"] = {
				["junkIcon"] = true,
				["countFont"] = "聊天",
				["itemLevelFont"] = "聊天",
				["vendorGrays"] = {
					["enable"] = true,
				},
				["bankSize"] = 42,
				["bankWidth"] = 472,
				["showBindType"] = true,
				["bagSize"] = 42,
				["bagWidth"] = 472,
			},
			["chat"] = {
				["fontSize"] = 10,
				["tabFont"] = "聊天",
				["separateSizes"] = true,
				["tabFontSize"] = 14,
				["panelHeightRight"] = 50,
				["font"] = "聊天",
				["panelHeight"] = 236,
				["panelBackdrop"] = "LEFT",
				["panelWidthRight"] = 310,
				["panelColorConverted"] = true,
				["panelWidth"] = 285,
			},
			["unitframe"] = {
				["fontSize"] = 14,
				["fontOutline"] = "NONE",
				["font"] = "聊天",
				["smoothbars"] = true,
				["thinBorders"] = true,
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
						["power"] = {
							["enable"] = false,
						},
						["enable"] = true,
						["height"] = 20,
						["colorOverride"] = "FORCE_ON",
						["width"] = 80,
					},
					["boss"] = {
						["debuffs"] = {
							["numrows"] = 1,
							["sizeOverride"] = 27,
							["maxDuration"] = 300,
							["yOffset"] = -16,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
							["width"] = 45,
						},
						["castbar"] = {
							["width"] = 246,
						},
						["enable"] = false,
						["width"] = 246,
						["infoPanel"] = {
							["height"] = 17,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 60,
						["buffs"] = {
							["maxDuration"] = 300,
							["sizeOverride"] = 27,
							["yOffset"] = 16,
						},
					},
					["party"] = {
						["height"] = 30,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
						["width"] = 60,
						["power"] = {
							["height"] = 13,
						},
					},
					["focustarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["targettarget"] = {
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = false,
						},
						["threatStyle"] = "GLOW",
						["power"] = {
							["enable"] = false,
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 20,
						["disableMouseoverGlow"] = true,
						["raidicon"] = {
							["attachTo"] = "LEFT",
							["enable"] = false,
							["xOffset"] = 2,
							["yOffset"] = 0,
						},
					},
					["raid"] = {
						["power"] = {
							["height"] = 10,
							["xOffset"] = 0,
						},
						["rdebuffs"] = {
							["xOffset"] = 30,
							["font"] = "PT Sans Narrow",
							["size"] = 30,
							["yOffset"] = 25,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_UP",
						["resurrectIcon"] = {
							["attachTo"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["yOffset"] = 1,
							["position"] = "BOTTOMLEFT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["yOffset"] = 0,
						},
						["height"] = 30,
						["width"] = 52,
						["visibility"] = "[@raid6,noexists] hide;show",
						["numGroups"] = 8,
					},
					["target"] = {
						["power"] = {
							["height"] = 22,
							["text_format"] = "[powercolor][curpp]",
							["attachTextTo"] = "Power",
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 180,
						["name"] = {
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["xOffset"] = 0,
							["text_format"] = "[healthcolor][curpp]",
							["frequentUpdates"] = true,
							["position"] = "LEFT",
						},
						["orientation"] = "LEFT",
						["height"] = 50,
						["castbar"] = {
							["height"] = 20,
							["width"] = 180,
							["insideInfoPanel"] = false,
						},
						["disableMouseoverGlow"] = true,
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["player"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["position"] = "LEFT",
							["xOffset"] = 0,
							["text_format"] = "[powercolor][curpp]",
							["height"] = 20,
						},
						["raidRoleIcons"] = {
							["enable"] = false,
						},
						["healPrediction"] = {
							["enable"] = false,
						},
						["colorOverride"] = "FORCE_ON",
						["width"] = 180,
						["disableMouseoverGlow"] = true,
						["castbar"] = {
							["height"] = 20,
							["width"] = 200,
							["insideInfoPanel"] = false,
						},
						["name"] = {
							["attachTextTo"] = "Power",
							["text_format"] = "[level]",
							["position"] = "RIGHT",
						},
						["health"] = {
							["xOffset"] = 0,
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][curhp]",
						},
						["height"] = 60,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["enable"] = true,
						},
						["classbar"] = {
							["height"] = 14,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "PT Sans Narrow",
						},
					},
					["focus"] = {
						["height"] = 20,
						["width"] = 80,
						["health"] = {
							["frequentUpdates"] = true,
						},
						["castbar"] = {
							["height"] = 10,
							["width"] = 80,
						},
					},
					["assist"] = {
						["enable"] = false,
					},
					["arena"] = {
						["enable"] = false,
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["enable"] = true,
						},
						["disableTargetGlow"] = false,
						["castbar"] = {
							["iconSize"] = 32,
							["width"] = 270,
						},
						["health"] = {
							["frequentUpdates"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["width"] = 270,
					},
					["pettarget"] = {
						["health"] = {
							["frequentUpdates"] = true,
						},
					},
				},
			},
			["datatexts"] = {
				["panels"] = {
					["RightChatDataPanel"] = {
						["right"] = "Bags",
						["left"] = "Time",
						["middle"] = "Gold",
					},
					["LeftChatDataPanel"] = {
						["middle"] = "Attack Power",
					},
				},
				["fontSize"] = 14,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttons"] = 10,
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 30,
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar6"] = {
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar2"] = {
					["enabled"] = true,
					["buttons"] = 10,
					["buttonspacing"] = 1,
					["buttonsize"] = 35,
					["visibility"] = "[vehicleui] hide; show",
				},
				["bar1"] = {
					["buttonspacing"] = 1,
					["buttonsPerRow"] = 10,
					["buttonsize"] = 35,
					["buttons"] = 10,
				},
				["bar5"] = {
					["visibility"] = "[vehicleui] hide; show",
					["buttonsPerRow"] = 12,
					["buttonsize"] = 30,
					["buttons"] = 12,
				},
				["bar4"] = {
					["buttonsPerRow"] = 12,
					["visibility"] = "[vehicleui] hide; show",
					["buttons"] = 10,
				},
				["microbar"] = {
					["enabled"] = true,
				},
				["stanceBar"] = {
					["buttonsPerRow"] = 5,
					["buttons"] = 5,
				},
				["barPet"] = {
					["buttonsPerRow"] = 10,
				},
				["backdropSpacingConverted"] = true,
			},
			["nameplates"] = {
				["threat"] = {
					["badScale"] = 1,
					["goodScale"] = 1,
				},
			},
			["tooltip"] = {
				["healthBar"] = {
					["height"] = 12,
					["fontOutline"] = "MONOCHROMEOUTLINE",
				},
				["fontSize"] = 10,
			},
			["auras"] = {
				["buffs"] = {
					["horizontalSpacing"] = 1,
					["durationFontSize"] = 12,
					["size"] = 30,
					["verticalSpacing"] = 14,
					["countFontSize"] = 10,
					["wrapAfter"] = 10,
				},
				["debuffs"] = {
					["countFontSize"] = 10,
					["size"] = 30,
				},
			},
			["layoutSet"] = "tank",
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Shadow - AzerothCore"] = "Shadow - AzerothCore",
		["Hyper - AzerothCore"] = "Hyper - AzerothCore",
		["Heady - AzerothCore"] = "Heady - AzerothCore",
		["Bkk - AzerothCore"] = "Bkk - AzerothCore",
	},
	["profiles"] = {
		["Shadow - AzerothCore"] = {
		},
		["Hyper - AzerothCore"] = {
			["general"] = {
				["minimap"] = {
					["enable"] = false,
				},
			},
			["worldmap"] = {
				["enable"] = false,
			},
			["install_complete"] = "6.09",
		},
		["Heady - AzerothCore"] = {
			["worldmap"] = {
				["enable"] = false,
			},
			["general"] = {
				["minimap"] = {
					["enable"] = false,
				},
			},
			["theme"] = "class",
			["install_complete"] = "6.09",
		},
		["Bkk - AzerothCore"] = {
			["theme"] = "classic",
			["general"] = {
				["dmgfont"] = "聊天",
				["namefont"] = "聊天",
			},
			["install_complete"] = "6.09",
		},
	},
}
