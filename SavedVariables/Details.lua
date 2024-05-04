
_details_global = {
	["got_first_run"] = true,
	["tutorial"] = {
		["unlock_button"] = 0,
		["main_help_button"] = 62,
		["logons"] = 62,
		["version_announce"] = 0,
		["alert_frames"] = {
			false, -- [1]
			false, -- [2]
			false, -- [3]
			false, -- [4]
			false, -- [5]
			false, -- [6]
		},
		["bookmark_tutorial"] = false,
	},
	["savedStyles"] = {
	},
	["report_pos"] = {
		1, -- [1]
		1, -- [2]
	},
	["custom"] = {
		{
			["source"] = false,
			["author"] = "Details!",
			["desc"] = "Show who in your raid used a potion during the encounter.",
			["icon"] = "Interface\\ICONS\\INV_Alchemy_Elixir_04",
			["name"] = "Potion Used",
			["attribute"] = false,
			["target"] = false,
			["script"] = "				--init:\n				local combat, instance_container, instance = ...\n				local total, top, amount = 0, 0, 0\n\n				--get the misc actor container\n				local misc_container = combat:GetActorList( DETAILS_ATTRIBUTE_MISC )\n\n				--do the loop:\n				for _, player in ipairs( misc_container ) do \n				    \n				    --only player in group\n				    if (player:IsGroupPlayer()) then\n					\n					local found_potion = false\n					\n					--get the spell debuff uptime container\n					local debuff_uptime_container = player.debuff_uptime and player.debuff_uptime_spell_tables and player.debuff_uptime_spell_tables._ActorTable\n					\n					--get the spell buff uptime container\n					local buff_uptime_container = player.buff_uptime and player.buff_uptime_spell_tables and player.buff_uptime_spell_tables._ActorTable\n					if (buff_uptime_container) then\n					    \n					    --potion of the jade serpent\n					    local potion_of_speed = buff_uptime_container[53908]\n					    if (potion_of_speed) then\n						local used = potion_of_speed.activedamt\n						if (used > 0) then\n						    total = total + used\n						    found_potion = true\n						    if (used > top) then\n							top = used\n						    end\n						    --add amount to the player \n						    instance_container:AddValue(player, used)\n						end\n					    end\n					    \n					    --potion of mogu power\n					    local potion_of_wild_magic = buff_uptime_container[53909]\n					    if (potion_of_wild_magic) then\n						local used = potion_of_wild_magic.activedamt\n						if (used > 0) then\n						    total = total + used\n						    found_potion = true\n						    if (used > top) then\n							top = used\n						    end\n						    --add amount to the player \n						    instance_container:AddValue(player, used)\n						end\n					    end\n					    \n					    --virmen's bite\n					    local insane_strength_potion = buff_uptime_container[28494]\n					    if (insane_strength_potion) then\n							local used = insane_strength_potion.activedamt\n							if (used > 0) then\n								total = total + used\n								found_potion = true\n								if (used > top) then\n									top = used\n								end\n								--add amount to the player \n								instance_container:AddValue(player, used)\n							end\n					    end\n						\n						--armor potion\n					    local armor_potion = buff_uptime_container[53762]\n					    if (armor_potion) then\n							local used = armor_potion.activedamt\n							if (used > 0) then\n								total = total + used\n								found_potion = true\n								if (used > top) then\n									top = used\n								end\n								--add amount to the player \n								instance_container:AddValue(player, used)\n							end\n					    end\n\n					end\n					\n					if (found_potion) then\n					    amount = amount + 1\n					end    \n				    end\n				end\n\n				--return:\n				return total, top, amount\n				",
			["spellid"] = false,
			["tooltip"] = "			--init:\n			local player, combat, instance = ...\n\n			--get the buff container for all the others potions\n			local buff_uptime_container = player.buff_uptime and player.buff_uptime_spell_tables and player.buff_uptime_spell_tables._ActorTable\n			if (buff_uptime_container) then\n			    --potion of the jade serpent\n			    local jade_serpent_potion = buff_uptime_container[53908]\n			    if (jade_serpent_potion) then\n				local name, _, icon = GetSpellInfo(53908)\n				GameCooltip:AddLine(name, jade_serpent_potion.activedamt)\n				_details:AddTooltipBackgroundStatusbar()\n				GameCooltip:AddIcon(icon, 1, 1, 14, 14)\n			    end\n			    \n			    --potion of mogu power\n			    local mogu_power_potion = buff_uptime_container[53909]\n			    if (mogu_power_potion) then\n				local name, _, icon = GetSpellInfo(53909)\n				GameCooltip:AddLine(name, mogu_power_potion.activedamt)\n				_details:AddTooltipBackgroundStatusbar()\n				GameCooltip:AddIcon(icon, 1, 1, 14, 14)\n			    end\n			    \n			    --virmen's bite\n			    local virmens_bite_potion = buff_uptime_container[28494]\n			    if (virmens_bite_potion) then\n				local name, _, icon = GetSpellInfo(28494)\n				GameCooltip:AddLine(name, virmens_bite_potion.activedamt)\n				_details:AddTooltipBackgroundStatusbar()\n				GameCooltip:AddIcon(icon, 1, 1, 14, 14)\n			    end\n				--armor potion\n			    local armor_potion = buff_uptime_container[53762]\n			    if (armor_potion) then\n				local name, _, icon = GetSpellInfo(53762)\n				GameCooltip:AddLine(name, armor_potion.activedamt)\n				_details:AddTooltipBackgroundStatusbar()\n				GameCooltip:AddIcon(icon, 1, 1, 14, 14)\n			    end\n				\n			end\n		",
		}, -- [1]
		{
			["source"] = "[raid]",
			["author"] = "Details!",
			["desc"] = "Show who in your raid group used the healthstone.",
			["icon"] = "Interface\\ICONS\\INV_Stone_04",
			["name"] = "Healthstone Used",
			["attribute"] = "healdone",
			["target"] = "[raid]",
			["script"] = false,
			["spellid"] = 47875,
			["tooltip"] = false,
		}, -- [2]
		{
			["source"] = false,
			["author"] = "Details!",
			["percent_script"] = "				local value, top, total, combat, instance = ...\n				return string.format(\"%.1f\", value/top*100)\n			",
			["desc"] = "Tells how much time each character spent doing damage.",
			["icon"] = "Interface\\ICONS\\Achievement_PVP_H_06",
			["attribute"] = false,
			["name"] = "Damage Activity Time",
			["script"] = "				--init:\n				local combat, instance_container, instance = ...\n				local total, amount = 0, 0\n\n				--get the misc actor container\n				local damage_container = combat:GetActorList( DETAILS_ATTRIBUTE_DAMAGE )\n				\n				--do the loop:\n				for _, player in ipairs( damage_container ) do \n					if (player.group) then\n						local activity = player:Time()\n						total = total + activity\n						amount = amount + 1\n						--add amount to the player \n						instance_container:AddValue(player, activity)\n					end\n				end\n				\n				--return:\n				return total, combat:GetCombatTime(), amount\n			",
			["target"] = false,
			["total_script"] = "				local value, top, total, combat, instance = ...\n				local minutes, seconds = math.floor(value/60), math.floor(value%60)\n				return minutes .. \"m \" .. seconds .. \"s\"\n			",
			["spellid"] = false,
			["tooltip"] = "				\n			",
		}, -- [3]
		{
			["source"] = false,
			["author"] = "Details!",
			["percent_script"] = "				local value, top, total, combat, instance = ...\n				return string.format(\"%.1f\", value/top*100)\n			",
			["desc"] = "Tells how much time each character spent doing healing.",
			["icon"] = "Interface\\ICONS\\Achievement_PVP_G_06",
			["attribute"] = false,
			["name"] = "Healing Activity Time",
			["script"] = "				--init:\n				local combat, instance_container, instance = ...\n				local total, top, amount = 0, 0, 0\n\n				--get the misc actor container\n				local damage_container = combat:GetActorList( DETAILS_ATTRIBUTE_HEAL )\n				\n				--do the loop:\n				for _, player in ipairs( damage_container ) do \n					if (player.group) then\n						local activity = player:Time()\n						total = total + activity\n						amount = amount + 1\n						--add amount to the player \n						instance_container:AddValue(player, activity)\n					end\n				end\n				\n				--return:\n				return total, combat:GetCombatTime(), amount\n			",
			["target"] = false,
			["total_script"] = "				local value, top, total, combat, instance = ...\n				local minutes, seconds = math.floor(value/60), math.floor(value%60)\n				return minutes .. \"m \" .. seconds .. \"s\"\n			",
			["spellid"] = false,
			["tooltip"] = "				\n			",
		}, -- [4]
		{
			["source"] = false,
			["author"] = "Details!",
			["desc"] = "Show the damage of enemy spells against your group.",
			["icon"] = "Interface\\ICONS\\spell_mage_infernoblast",
			["name"] = "Damage Taken By Spell",
			["attribute"] = false,
			["target"] = false,
			["script"] = "				--> get the parameters passed\n				local combat, instance_container, instance = ...\n				--> declare the values to return\n				local total, top, amount = 0, 0, 0\n				--> get a list of all damage actors\n				local AllDamageCharacters = combat:GetActorList(DETAILS_ATTRIBUTE_DAMAGE)\n				--> no amount increase for repeated spells\n				local NoRepeat = {}\n				--> do a loop among the actors\n				for index, character in ipairs(AllDamageCharacters) do\n\n					--> is the actor an enemy?\n					if (character:IsEnemy()) then\n\n						local AllSpells = character:GetSpellList()\n\n						for spellid, spell in pairs(AllSpells) do\n							if (spell.total >= 1 and spellid > 10) then\n								instance_container:AddValue(spell, spell.total)\n\n								total = total + spell.total\n\n								if (top < spell.total) then\n									top = spell.total\n								end\n\n								if (not NoRepeat[spellid]) then\n									amount = amount + 1\n									NoRepeat[spellid] = true\n								end\n							end\n						end\n					end\n				end\n				--> return\n				return total, top, amount\n			",
			["spellid"] = false,
			["tooltip"] = "				--> get the parameters passed\n				local actor, combat, instance = ...\n				--> get the cooltip object (we do not use the conventional GameTooltip here)\n				local GameCooltip = GameCooltip\n				--> Cooltip code\n				local from_spell = actor.id\n				--> get a list of all damage actors\n				local AllDamageCharacters = combat:GetActorList(DETAILS_ATTRIBUTE_DAMAGE)\n				--> hold the targets\n				local Targets = {}\n				for index, character in ipairs(AllDamageCharacters) do\n					if (character:IsEnemy()) then\n						local AllSpells = character:GetSpellList()\n\n						for spellid, spell in pairs(AllSpells) do\n							if (spellid == from_spell) then\n								for index, _table in pairs(spell.targets._ActorTable) do\n									local targetname = _table.name\n									local amount = _table.total\n									local got = false\n									for index, t in ipairs(Targets) do\n										if (t[1] == targetname) then\n											t[2] = t[2] + amount\n											got = true\n											break\n										end\n									end\n									if (not got) then\n										Targets[#Targets+1] = {targetname, amount}\n									end\n								end\n							end\n						end\n					end\n				end\n				table.sort(Targets, _details.Sort2)\n				for index, t in ipairs(Targets) do\n					GameCooltip:AddLine(t[1], _details:ToK2(t[2]))\n					_details:AddTooltipBackgroundStatusbar()\n					local class = _details:GetClass(t[1])\n					if (class) then\n						local texture, l, r, t, b = _details:GetClassIcon(class)\n						GameCooltip:AddIcon(texture, 1, 1, 14, 14, l, r, t, b)\n					end\n				end\n			",
		}, -- [5]
	},
	["lastUpdateWarning"] = 0,
	["always_use_profile"] = false,
	["report_where"] = "SAY",
	["realm_sync"] = true,
	["performance_profiles"] = {
		["Dungeon"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["RaidFinder"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Battleground15"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Battleground40"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Mythic"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Arena"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Raid30"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
		["Raid15"] = {
			["enabled"] = false,
			["update_speed"] = 1,
			["miscdata"] = true,
			["aura"] = true,
			["heal"] = true,
			["use_row_animations"] = false,
			["energy"] = false,
			["damage"] = true,
		},
	},
	["switchSaved"] = {
		["slots"] = 14,
		["table"] = {
			{
				["attribute"] = 1,
				["sub_attribute"] = 1,
			}, -- [1]
			{
				["attribute"] = 2,
				["sub_attribute"] = 1,
			}, -- [2]
			{
				["attribute"] = 1,
				["sub_attribute"] = 6,
			}, -- [3]
			{
				["attribute"] = 4,
				["sub_attribute"] = 5,
			}, -- [4]
			{
			}, -- [5]
			{
			}, -- [6]
			{
			}, -- [7]
			{
			}, -- [8]
			{
			}, -- [9]
			{
			}, -- [10]
			{
			}, -- [11]
			{
			}, -- [12]
			{
			}, -- [13]
			{
			}, -- [14]
		},
	},
	["savedTimeCaptures"] = {
	},
	["savedCustomSpells"] = {
		{
			5, -- [1]
			"Environment (Fatigue)", -- [2]
			"Interface\\ICONS\\Spell_Arcane_MindMastery", -- [3]
		}, -- [1]
		{
			1, -- [1]
			"Melee", -- [2]
			"Interface\\AddOns\\Details\\images\\melee.tga", -- [3]
		}, -- [2]
		{
			7, -- [1]
			"Environment (Lava)", -- [2]
			"Interface\\AddOns\\Details\\images\\Ability_Rhyolith_Volcano", -- [3]
		}, -- [3]
		{
			2, -- [1]
			"Auto Shot", -- [2]
			"Interface\\AddOns\\Details\\images\\autoshot.tga", -- [3]
		}, -- [4]
		{
			8, -- [1]
			"Environment (Slime)", -- [2]
			"Interface\\ICONS\\Ability_Creature_Poison_02", -- [3]
		}, -- [5]
		{
			3, -- [1]
			"Environment (falling)", -- [2]
			"Interface\\ICONS\\Spell_Magic_FeatherFall", -- [3]
		}, -- [6]
		{
			4, -- [1]
			"Environment (Drowning)", -- [2]
			"Interface\\ICONS\\Ability_Suffocate", -- [3]
		}, -- [7]
		{
			6, -- [1]
			"Environment (Fire)", -- [2]
			"Interface\\ICONS\\INV_SummerFest_FireSpirit", -- [3]
		}, -- [8]
	},
	["__profiles"] = {
		["Heady-AzerothCore"] = {
			["capture_real"] = {
				["heal"] = true,
				["spellcast"] = true,
				["miscdata"] = true,
				["aura"] = true,
				["energy"] = true,
				["damage"] = true,
			},
			["row_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["use_row_animations"] = false,
			["segments_amount"] = 12,
			["windows_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["skin"] = "Default Skin",
			["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
			["report_to_who"] = "",
			["overall_flag"] = 13,
			["minimum_combat_time"] = 5,
			["default_bg_alpha"] = 0.5,
			["clear_ungrouped"] = true,
			["memory_threshold"] = 3,
			["scroll_speed"] = 2,
			["font_sizes"] = {
				["menus"] = 10,
			},
			["ps_abbreviation"] = 3,
			["tooltip"] = {
				["anchor_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["fontcolor_right"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["anchor_relative"] = "top",
				["abbreviation"] = 2,
				["anchored_to"] = 1,
				["fontsize"] = 10,
				["header_text_color"] = {
					1, -- [1]
					0.9176, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["background"] = {
					0.1411, -- [1]
					0.1411, -- [2]
					0.1411, -- [3]
					0.8763, -- [4]
				},
				["commands"] = {
				},
				["fontface"] = "Friz Quadrata TT",
				["border_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["border_texture"] = "Blizzard Tooltip",
				["border_size"] = 16,
				["fontshadow"] = false,
				["anchor_screen_pos"] = {
					507.7, -- [1]
					-350.5, -- [2]
				},
				["anchor_point"] = "bottom",
				["show_amount"] = false,
				["fontcolor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["maximize_method"] = 1,
			},
			["update_speed"] = 1,
			["animate_scroll"] = false,
			["class_coords"] = {
				["HUNTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["WARRIOR"] = {
					0, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["SHAMAN"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["MAGE"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PET"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DRUID"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["DEATHKNIGHT"] = {
					0.25, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["UNKNOW"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PRIEST"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["MONSTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["Alliance"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["WARLOCK"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["PALADIN"] = {
					0, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["Horde"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["ROGUE"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["ENEMY"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["UNGROUPPLAYER"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
			},
			["disable_window_groups"] = false,
			["trash_auto_remove"] = true,
			["clear_graphic"] = true,
			["report_schema"] = 1,
			["class_colors"] = {
				["HUNTER"] = {
					0.67, -- [1]
					0.83, -- [2]
					0.45, -- [3]
				},
				["WARRIOR"] = {
					0.78, -- [1]
					0.61, -- [2]
					0.43, -- [3]
				},
				["SHAMAN"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["MAGE"] = {
					0.41, -- [1]
					0.8, -- [2]
					0.94, -- [3]
				},
				["ARENA_ALLY"] = {
					0.2, -- [1]
					1, -- [2]
					0.2, -- [3]
				},
				["UNGROUPPLAYER"] = {
					0.4, -- [1]
					0.4, -- [2]
					0.4, -- [3]
				},
				["ARENA_ENEMY"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["DEATHKNIGHT"] = {
					0.77, -- [1]
					0.12, -- [2]
					0.23, -- [3]
				},
				["UNKNOW"] = {
					0.2, -- [1]
					0.2, -- [2]
					0.2, -- [3]
				},
				["PRIEST"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["DRUID"] = {
					1, -- [1]
					0.49, -- [2]
					0.04, -- [3]
				},
				["version"] = 1,
				["WARLOCK"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
				},
				["ROGUE"] = {
					1, -- [1]
					0.96, -- [2]
					0.41, -- [3]
				},
				["PALADIN"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
				},
				["NEUTRAL"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["ENEMY"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
				},
				["PET"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
			},
			["overall_clear_newchallenge"] = true,
			["windows_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["overall_clear_newboss"] = true,
			["segments_auto_erase"] = 1,
			["cloud_capture"] = true,
			["segments_amount_to_save"] = 5,
			["minimap"] = {
				["onclick_what_todo"] = 1,
				["radius"] = 160,
				["text_type"] = 1,
				["minimapPos"] = 220,
				["text_format"] = 3,
				["hide"] = false,
			},
			["instances_amount"] = 5,
			["max_window_size"] = {
				["height"] = 450,
				["width"] = 480,
			},
			["use_scroll"] = false,
			["only_pvp_frags"] = false,
			["remove_realm_from_name"] = true,
			["report_heal_links"] = false,
			["report_lines"] = 5,
			["trash_concatenate"] = false,
			["segments_panic_mode"] = true,
			["window_clamp"] = {
				-8, -- [1]
				0, -- [2]
				21, -- [3]
				-14, -- [4]
			},
			["default_bg_color"] = 0.0941,
			["row_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["time_type"] = 2,
			["standard_skin"] = false,
			["total_abbreviation"] = 2,
			["memory_ram"] = 64,
			["hotcorner_topleft"] = {
				["hide"] = false,
			},
			["profile_save_pos"] = true,
			["disable_reset_button"] = false,
			["data_broker_text"] = "",
			["instances_segments_locked"] = false,
			["new_window_size"] = {
				["height"] = 130,
				["width"] = 320,
			},
			["deadlog_limit"] = 12,
			["instances"] = {
				{
					["__pos"] = {
						["normal"] = {
							["y"] = -164.5713972364158,
							["x"] = -563.928562344185,
							["w"] = 152.1428562381438,
							["h"] = 150.5713917229862,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["hide_in_combat_type"] = 1,
					["switch_healer_in_combat"] = false,
					["color"] = {
						0.3058, -- [1]
						0.3058, -- [2]
						0.3058, -- [3]
						0.8838, -- [4]
					},
					["menu_anchor"] = {
						16, -- [1]
						2, -- [2]
						["side"] = 2,
					},
					["bg_r"] = 0.0941,
					["skin"] = "Minimalistic v2",
					["following"] = {
						["enabled"] = false,
						["bar_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["color_buttons"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["switch_healer"] = false,
					["bars_sort_direction"] = 1,
					["switch_all_roles_after_wipe"] = false,
					["position"] = {
						["normal"] = {
							["y"] = -164.5713972364158,
							["x"] = -563.928562344185,
							["w"] = 152.1428562381438,
							["h"] = 150.5713917229862,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["tooltip"] = {
						["n_abilities"] = 3,
						["n_enemies"] = 3,
					},
					["StatusBarSaved"] = {
						["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
						["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						["options"] = {
							["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
								["textYMod"] = 0,
								["textXMod"] = 0,
								["textFace"] = "Friz Quadrata TT",
								["textAlign"] = 0,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
							},
							["DETAILS_STATUSBAR_PLUGIN_PSEGMENT"] = {
								["textYMod"] = 0,
								["segmentType"] = 2,
								["textFace"] = "Friz Quadrata TT",
								["textXMod"] = 0,
								["textAlign"] = 0,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
							},
							["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
								["textYMod"] = 0,
								["textFace"] = "Friz Quadrata TT",
								["textXMod"] = 6,
								["timeType"] = 1,
								["textAlign"] = 0,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
							},
						},
						["left"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
					},
					["__was_opened"] = true,
					["switch_all_roles_in_combat"] = false,
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["version"] = 3,
					["attribute_text"] = {
						["enabled"] = true,
						["shadow"] = false,
						["side"] = 1,
						["text_size"] = 11,
						["custom_text"] = "{name}",
						["text_face"] = "Arial Narrow",
						["anchor"] = {
							-18, -- [1]
							5, -- [2]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["enable_custom_text"] = false,
					},
					["__locked"] = false,
					["menu_alpha"] = {
						["enabled"] = false,
						["onenter"] = 1,
						["iconstoo"] = true,
						["ignorebars"] = false,
						["onleave"] = 1,
					},
					["switch_damager"] = false,
					["show_sidebars"] = false,
					["bg_alpha"] = 0.3181,
					["strata"] = "LOW",
					["switch_tank_in_combat"] = false,
					["__snap"] = {
					},
					["switch_tank"] = false,
					["hide_in_combat_alpha"] = 0,
					["plugins_grow_direction"] = 1,
					["menu_icons"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
						true, -- [5]
						true, -- [6]
						["space"] = -4,
						["shadow"] = false,
					},
					["desaturated_menu"] = false,
					["micro_displays_side"] = 2,
					["menu_anchor_down"] = {
						16, -- [1]
						-2, -- [2]
					},
					["window_scale"] = 1,
					["grab_on_top"] = false,
					["row_info"] = {
						["textR_outline"] = false,
						["textL_outline"] = false,
						["icon_file"] = "",
						["percent_type"] = 1,
						["fixed_texture_background_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.3186, -- [4]
						},
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
						["textR_enable_custom_text"] = true,
						["texture_background_class_color"] = false,
						["fixed_texture_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
						},
						["textL_show_number"] = false,
						["space"] = {
							["right"] = 0,
							["left"] = 0,
							["between"] = 1,
						},
						["texture"] = "BantoBar",
						["textR_custom_text"] = "{data1}    {data2}",
						["start_after_icon"] = false,
						["font_face_file"] = "Fonts\\ARHei.ttf",
						["fixed_text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["alpha"] = 1,
						["textR_class_colors"] = false,
						["backdrop"] = {
							["enabled"] = false,
							["size"] = 12,
							["color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["texture"] = "Details BarBorder 2",
						},
						["texture_background"] = "Details Serenity",
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["no_icon"] = true,
						["font_size"] = 12,
						["textL_class_colors"] = false,
						["font_face"] = "聊天",
						["texture_class_colors"] = true,
						["height"] = 14,
						["texture_file"] = "Interface\\AddOns\\Details\\images\\bar4",
						["texture_background_file"] = "Interface\\AddOns\\Details\\images\\bar4",
						["textL_enable_custom_text"] = false,
					},
					["backdrop_texture"] = "Details Ground",
					["hide_icon"] = true,
					["statusbar_info"] = {
						["alpha"] = 1,
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["auto_hide_menu"] = {
						["left"] = false,
						["right"] = false,
					},
					["auto_current"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0.0941,
					["show_statusbar"] = false,
					["hide_in_combat"] = false,
					["bars_grow_direction"] = 1,
					["switch_damager_in_combat"] = false,
					["menu_icons_size"] = 0.9,
					["wallpaper"] = {
						["enabled"] = false,
						["texcoord"] = {
							0, -- [1]
							1, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["anchor"] = "all",
						["height"] = 0,
						["alpha"] = 0.5,
						["width"] = 0,
					},
					["stretch_button_side"] = 1,
					["hide_out_of_combat"] = false,
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = true,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["bg_b"] = 0.0941,
				}, -- [1]
			},
		},
		["Lucy-AzerothCore"] = {
			["capture_real"] = {
				["heal"] = true,
				["spellcast"] = true,
				["miscdata"] = true,
				["aura"] = true,
				["energy"] = true,
				["damage"] = true,
			},
			["row_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["use_row_animations"] = true,
			["segments_amount"] = 12,
			["windows_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["skin"] = "Default Skin",
			["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
			["report_to_who"] = "",
			["minimum_combat_time"] = 5,
			["overall_flag"] = 13,
			["default_bg_alpha"] = 0.5,
			["clear_ungrouped"] = true,
			["ps_abbreviation"] = 3,
			["scroll_speed"] = 2,
			["new_window_size"] = {
				["height"] = 130,
				["width"] = 320,
			},
			["memory_threshold"] = 3,
			["tooltip"] = {
				["anchor_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["fontcolor_right"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["anchor_relative"] = "top",
				["abbreviation"] = 2,
				["anchored_to"] = 1,
				["fontsize"] = 10,
				["header_text_color"] = {
					1, -- [1]
					0.9176, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["background"] = {
					0.1411, -- [1]
					0.1411, -- [2]
					0.1411, -- [3]
					0.8763, -- [4]
				},
				["commands"] = {
				},
				["fontface"] = "Friz Quadrata TT",
				["border_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					0, -- [4]
				},
				["border_texture"] = "Blizzard Tooltip",
				["border_size"] = 16,
				["fontshadow"] = false,
				["anchor_screen_pos"] = {
					507.7, -- [1]
					-350.5, -- [2]
				},
				["anchor_point"] = "bottom",
				["show_amount"] = false,
				["fontcolor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["maximize_method"] = 1,
			},
			["update_speed"] = 0.300000011920929,
			["animate_scroll"] = false,
			["class_coords"] = {
				["HUNTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["WARRIOR"] = {
					0, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PALADIN"] = {
					0, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["MAGE"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PET"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DRUID"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["DEATHKNIGHT"] = {
					0.25, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["UNKNOW"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PRIEST"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["MONSTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["Alliance"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["WARLOCK"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["ROGUE"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["Horde"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["SHAMAN"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["ENEMY"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["UNGROUPPLAYER"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
			},
			["disable_window_groups"] = false,
			["class_colors"] = {
				["HUNTER"] = {
					0.67, -- [1]
					0.83, -- [2]
					0.45, -- [3]
				},
				["WARRIOR"] = {
					0.78, -- [1]
					0.61, -- [2]
					0.43, -- [3]
				},
				["ROGUE"] = {
					1, -- [1]
					0.96, -- [2]
					0.41, -- [3]
				},
				["MAGE"] = {
					0.41, -- [1]
					0.8, -- [2]
					0.94, -- [3]
				},
				["ARENA_ALLY"] = {
					0.2, -- [1]
					1, -- [2]
					0.2, -- [3]
				},
				["UNGROUPPLAYER"] = {
					0.4, -- [1]
					0.4, -- [2]
					0.4, -- [3]
				},
				["ARENA_ENEMY"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["DEATHKNIGHT"] = {
					0.77, -- [1]
					0.12, -- [2]
					0.23, -- [3]
				},
				["UNKNOW"] = {
					0.2, -- [1]
					0.2, -- [2]
					0.2, -- [3]
				},
				["PRIEST"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["DRUID"] = {
					1, -- [1]
					0.49, -- [2]
					0.04, -- [3]
				},
				["ENEMY"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
				},
				["WARLOCK"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
				},
				["PALADIN"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
				},
				["SHAMAN"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["NEUTRAL"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["version"] = 1,
				["PET"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
			},
			["windows_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["report_schema"] = 1,
			["overall_clear_newboss"] = true,
			["overall_clear_newchallenge"] = true,
			["clear_graphic"] = true,
			["hotcorner_topleft"] = {
				["hide"] = false,
			},
			["segments_auto_erase"] = 1,
			["cloud_capture"] = true,
			["time_type"] = 2,
			["minimap"] = {
				["onclick_what_todo"] = 1,
				["radius"] = 160,
				["text_type"] = 1,
				["minimapPos"] = 220,
				["text_format"] = 3,
				["hide"] = false,
			},
			["instances_amount"] = 5,
			["max_window_size"] = {
				["height"] = 450,
				["width"] = 480,
			},
			["use_scroll"] = false,
			["only_pvp_frags"] = false,
			["remove_realm_from_name"] = true,
			["report_heal_links"] = false,
			["report_lines"] = 5,
			["trash_concatenate"] = false,
			["segments_panic_mode"] = true,
			["window_clamp"] = {
				-8, -- [1]
				0, -- [2]
				21, -- [3]
				-14, -- [4]
			},
			["default_bg_color"] = 0.0941,
			["row_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["segments_amount_to_save"] = 5,
			["standard_skin"] = false,
			["trash_auto_remove"] = true,
			["memory_ram"] = 64,
			["total_abbreviation"] = 2,
			["profile_save_pos"] = true,
			["disable_reset_button"] = false,
			["data_broker_text"] = "",
			["instances_segments_locked"] = false,
			["font_sizes"] = {
				["menus"] = 10,
			},
			["deadlog_limit"] = 12,
			["instances"] = {
				{
					["__pos"] = {
						["normal"] = {
							["y"] = -241.0711443264612,
							["x"] = 351.9998497962975,
							["w"] = 320.0000333786006,
							["h"] = 130.0000171363351,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["hide_in_combat_type"] = 1,
					["switch_healer_in_combat"] = false,
					["color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["menu_anchor"] = {
						16, -- [1]
						2, -- [2]
						["side"] = 2,
					},
					["bg_r"] = 0.3294,
					["skin"] = "ElvUI Frame Style",
					["following"] = {
						["enabled"] = false,
						["bar_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["color_buttons"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["switch_healer"] = false,
					["bars_sort_direction"] = 1,
					["hide_out_of_combat"] = false,
					["version"] = 3,
					["__was_opened"] = true,
					["StatusBarSaved"] = {
						["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
						["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						["options"] = {
							["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
								["textYMod"] = 0,
								["textXMod"] = 0,
								["textFace"] = "Arial Narrow",
								["textAlign"] = 0,
								["textStyle"] = 2,
								["textSize"] = 11,
								["textColor"] = {
									0.52549, -- [1]
									0.52549, -- [2]
									0.52549, -- [3]
									1, -- [4]
								},
							},
							["DETAILS_STATUSBAR_PLUGIN_THREAT"] = {
								["isHidden"] = false,
								["textStyle"] = 2,
								["textYMod"] = 0,
								["segmentType"] = 2,
								["textXMod"] = 0,
								["textFace"] = "Arial Narrow",
								["textAlign"] = 0,
								["textSize"] = 11,
								["textColor"] = {
									0.52549, -- [1]
									0.52549, -- [2]
									0.52549, -- [3]
									1, -- [4]
								},
							},
							["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
								["textYMod"] = 0,
								["timeType"] = 1,
								["textXMod"] = 6,
								["textAlign"] = 0,
								["textFace"] = "Arial Narrow",
								["textStyle"] = 2,
								["textSize"] = 11,
								["textColor"] = {
									0.52549, -- [1]
									0.52549, -- [2]
									0.52549, -- [3]
									1, -- [4]
								},
							},
						},
						["left"] = "DETAILS_STATUSBAR_PLUGIN_THREAT",
					},
					["position"] = {
						["normal"] = {
							["y"] = -241.0711443264612,
							["x"] = 351.9998497962975,
							["w"] = 320.0000333786006,
							["h"] = 130.0000171363351,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["switch_all_roles_in_combat"] = false,
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["bg_alpha"] = 0.5199999809265137,
					["attribute_text"] = {
						["enabled"] = true,
						["shadow"] = true,
						["side"] = 1,
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							0.7, -- [4]
						},
						["custom_text"] = "{name}",
						["text_face"] = "Friz Quadrata TT",
						["anchor"] = {
							-20, -- [1]
							4, -- [2]
						},
						["text_size"] = 10,
						["enable_custom_text"] = false,
					},
					["__locked"] = false,
					["menu_alpha"] = {
						["enabled"] = false,
						["onleave"] = 1,
						["ignorebars"] = false,
						["iconstoo"] = true,
						["onenter"] = 1,
					},
					["switch_tank_in_combat"] = false,
					["stretch_button_side"] = 1,
					["switch_damager"] = false,
					["strata"] = "LOW",
					["show_sidebars"] = true,
					["__snap"] = {
					},
					["switch_tank"] = false,
					["hide_in_combat_alpha"] = 0,
					["switch_all_roles_after_wipe"] = false,
					["menu_icons"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
						true, -- [5]
						true, -- [6]
						["space"] = -4,
						["shadow"] = false,
					},
					["desaturated_menu"] = true,
					["micro_displays_side"] = 2,
					["bars_grow_direction"] = 1,
					["window_scale"] = 1,
					["row_info"] = {
						["textR_outline"] = false,
						["textL_outline"] = true,
						["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
						["fixed_texture_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
						},
						["start_after_icon"] = false,
						["texture_background_file"] = "Interface\\AddOns\\Details\\images\\bar4",
						["textR_enable_custom_text"] = false,
						["textR_custom_text"] = "{data1}({data2}, {data3}%)",
						["textL_enable_custom_text"] = false,
						["textL_show_number"] = true,
						["space"] = {
							["right"] = -2,
							["left"] = 1,
							["between"] = 1,
						},
						["texture"] = "Details Serenity",
						["texture_background_class_color"] = false,
						["fixed_texture_background_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.471, -- [4]
						},
						["font_face_file"] = "Fonts\\ARKai_C.ttf",
						["fixed_text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["backdrop"] = {
							["enabled"] = true,
							["texture"] = "Details BarBorder 2",
							["color"] = {
								0, -- [1]
								0, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["size"] = 4,
						},
						["textL_class_colors"] = false,
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["textR_class_colors"] = false,
						["alpha"] = 0.8,
						["no_icon"] = false,
						["font_size"] = 10,
						["texture_background"] = "Details D'ictum",
						["font_face"] = "伤害数字",
						["texture_class_colors"] = true,
						["height"] = 14,
						["texture_file"] = "Interface\\AddOns\\Details\\images\\bar4",
						["percent_type"] = 1,
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
					},
					["show_statusbar"] = false,
					["grab_on_top"] = false,
					["hide_icon"] = true,
					["statusbar_info"] = {
						["alpha"] = 1,
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["auto_hide_menu"] = {
						["left"] = false,
						["right"] = false,
					},
					["auto_current"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0.3294,
					["switch_damager_in_combat"] = false,
					["hide_in_combat"] = false,
					["backdrop_texture"] = "Details Ground",
					["menu_anchor_down"] = {
						16, -- [1]
						-2, -- [2]
					},
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["wallpaper"] = {
						["enabled"] = true,
						["width"] = 256,
						["texcoord"] = {
							0.0478515625, -- [1]
							0.2978515625, -- [2]
							0.630859375, -- [3]
							0.755859375, -- [4]
						},
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["anchor"] = "all",
						["height"] = 128,
						["alpha"] = 0.8,
						["texture"] = "Interface\\AddOns\\Details\\images\\skins\\elvui",
					},
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = true,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["plugins_grow_direction"] = 1,
					["menu_icons_size"] = 0.9,
					["tooltip"] = {
						["n_abilities"] = 3,
						["n_enemies"] = 3,
					},
					["bg_b"] = 0.3294,
				}, -- [1]
			},
		},
		["Lama-AzerothCore"] = {
			["capture_real"] = {
				["heal"] = true,
				["spellcast"] = true,
				["miscdata"] = true,
				["aura"] = true,
				["energy"] = true,
				["damage"] = true,
			},
			["row_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["use_row_animations"] = false,
			["segments_amount"] = 12,
			["windows_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["skin"] = "Default Skin",
			["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
			["report_to_who"] = "",
			["overall_flag"] = 13,
			["minimum_combat_time"] = 5,
			["default_bg_alpha"] = 0.5,
			["clear_ungrouped"] = true,
			["memory_threshold"] = 3,
			["scroll_speed"] = 2,
			["font_sizes"] = {
				["menus"] = 10,
			},
			["ps_abbreviation"] = 3,
			["tooltip"] = {
				["anchor_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["fontcolor_right"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["anchor_relative"] = "top",
				["abbreviation"] = 2,
				["anchored_to"] = 1,
				["fontsize"] = 10,
				["header_text_color"] = {
					1, -- [1]
					0.9176, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["background"] = {
					0.1411, -- [1]
					0.1411, -- [2]
					0.1411, -- [3]
					0.8763, -- [4]
				},
				["commands"] = {
				},
				["fontface"] = "Friz Quadrata TT",
				["border_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["border_texture"] = "Blizzard Tooltip",
				["border_size"] = 16,
				["fontshadow"] = false,
				["anchor_screen_pos"] = {
					507.7, -- [1]
					-350.5, -- [2]
				},
				["anchor_point"] = "bottom",
				["show_amount"] = false,
				["fontcolor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["maximize_method"] = 1,
			},
			["update_speed"] = 1,
			["animate_scroll"] = false,
			["class_coords"] = {
				["HUNTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["WARRIOR"] = {
					0, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["ROGUE"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["MAGE"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PET"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DRUID"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["DEATHKNIGHT"] = {
					0.25, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["UNKNOW"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PRIEST"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["MONSTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["Alliance"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["WARLOCK"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["SHAMAN"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["Horde"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PALADIN"] = {
					0, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["ENEMY"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["UNGROUPPLAYER"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
			},
			["disable_window_groups"] = false,
			["overall_clear_newboss"] = true,
			["clear_graphic"] = true,
			["report_schema"] = 1,
			["hotcorner_topleft"] = {
				["hide"] = false,
			},
			["overall_clear_newchallenge"] = true,
			["windows_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["total_abbreviation"] = 2,
			["segments_auto_erase"] = 1,
			["cloud_capture"] = true,
			["segments_amount_to_save"] = 5,
			["minimap"] = {
				["onclick_what_todo"] = 1,
				["radius"] = 160,
				["text_type"] = 1,
				["minimapPos"] = 220,
				["text_format"] = 3,
				["hide"] = false,
			},
			["instances_amount"] = 5,
			["max_window_size"] = {
				["height"] = 450,
				["width"] = 480,
			},
			["use_scroll"] = false,
			["only_pvp_frags"] = false,
			["remove_realm_from_name"] = true,
			["report_heal_links"] = false,
			["report_lines"] = 5,
			["trash_concatenate"] = false,
			["segments_panic_mode"] = true,
			["window_clamp"] = {
				-8, -- [1]
				0, -- [2]
				21, -- [3]
				-14, -- [4]
			},
			["default_bg_color"] = 0.0941,
			["row_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["time_type"] = 2,
			["standard_skin"] = false,
			["class_colors"] = {
				["HUNTER"] = {
					0.67, -- [1]
					0.83, -- [2]
					0.45, -- [3]
				},
				["WARRIOR"] = {
					0.78, -- [1]
					0.61, -- [2]
					0.43, -- [3]
				},
				["PALADIN"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
				},
				["MAGE"] = {
					0.41, -- [1]
					0.8, -- [2]
					0.94, -- [3]
				},
				["ARENA_ALLY"] = {
					0.2, -- [1]
					1, -- [2]
					0.2, -- [3]
				},
				["UNGROUPPLAYER"] = {
					0.4, -- [1]
					0.4, -- [2]
					0.4, -- [3]
				},
				["ARENA_ENEMY"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["DEATHKNIGHT"] = {
					0.77, -- [1]
					0.12, -- [2]
					0.23, -- [3]
				},
				["UNKNOW"] = {
					0.2, -- [1]
					0.2, -- [2]
					0.2, -- [3]
				},
				["PRIEST"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["DRUID"] = {
					1, -- [1]
					0.49, -- [2]
					0.04, -- [3]
				},
				["version"] = 1,
				["ENEMY"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
				},
				["SHAMAN"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["ROGUE"] = {
					1, -- [1]
					0.96, -- [2]
					0.41, -- [3]
				},
				["NEUTRAL"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["WARLOCK"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
				},
				["PET"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
			},
			["memory_ram"] = 64,
			["trash_auto_remove"] = true,
			["profile_save_pos"] = true,
			["disable_reset_button"] = false,
			["data_broker_text"] = "",
			["instances_segments_locked"] = false,
			["new_window_size"] = {
				["height"] = 130,
				["width"] = 320,
			},
			["deadlog_limit"] = 12,
			["instances"] = {
				{
					["__pos"] = {
						["normal"] = {
							["y"] = -176.2125370470802,
							["x"] = -429.23596696204,
							["w"] = 320.0000715255727,
							["h"] = 129.9999980628491,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["hide_in_combat_type"] = 1,
					["switch_healer_in_combat"] = false,
					["color"] = {
						0.3058, -- [1]
						0.3058, -- [2]
						0.3058, -- [3]
						0.8838, -- [4]
					},
					["menu_anchor"] = {
						16, -- [1]
						2, -- [2]
						["side"] = 2,
					},
					["bg_r"] = 0.0941,
					["skin"] = "Minimalistic v2",
					["following"] = {
						["enabled"] = false,
						["bar_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["color_buttons"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["switch_healer"] = false,
					["bars_sort_direction"] = 1,
					["hide_out_of_combat"] = false,
					["version"] = 3,
					["__was_opened"] = true,
					["StatusBarSaved"] = {
						["options"] = {
							["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
								["textYMod"] = 0,
								["textXMod"] = 0,
								["textFace"] = "Friz Quadrata TT",
								["textAlign"] = 0,
								["textStyle"] = 2,
								["textSize"] = 10,
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
							},
							["DETAILS_STATUSBAR_PLUGIN_THREAT"] = {
								["isHidden"] = false,
								["textStyle"] = 2,
								["textYMod"] = 0,
								["segmentType"] = 2,
								["textXMod"] = 0,
								["textFace"] = "Friz Quadrata TT",
								["textAlign"] = 0,
								["textSize"] = 10,
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
							},
							["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
								["textYMod"] = 0,
								["textStyle"] = 2,
								["textXMod"] = 6,
								["timeType"] = 1,
								["textFace"] = "Friz Quadrata TT",
								["textAlign"] = 0,
								["textSize"] = 10,
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
							},
						},
						["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						["left"] = "DETAILS_STATUSBAR_PLUGIN_THREAT",
						["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
					},
					["position"] = {
						["normal"] = {
							["y"] = -176.2125370470802,
							["x"] = -429.23596696204,
							["w"] = 320.0000715255727,
							["h"] = 129.9999980628491,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["switch_all_roles_in_combat"] = false,
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["bg_alpha"] = 0.3181,
					["attribute_text"] = {
						["enabled"] = true,
						["shadow"] = false,
						["side"] = 1,
						["text_size"] = 11,
						["custom_text"] = "{name}",
						["text_face"] = "Arial Narrow",
						["anchor"] = {
							-18, -- [1]
							5, -- [2]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["enable_custom_text"] = false,
					},
					["__locked"] = false,
					["menu_alpha"] = {
						["enabled"] = false,
						["onenter"] = 1,
						["iconstoo"] = true,
						["ignorebars"] = false,
						["onleave"] = 1,
					},
					["switch_tank_in_combat"] = false,
					["stretch_button_side"] = 1,
					["switch_damager"] = false,
					["strata"] = "LOW",
					["show_sidebars"] = false,
					["__snap"] = {
					},
					["switch_tank"] = false,
					["hide_in_combat_alpha"] = 0,
					["switch_all_roles_after_wipe"] = false,
					["menu_icons"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
						true, -- [5]
						true, -- [6]
						["space"] = -4,
						["shadow"] = false,
					},
					["desaturated_menu"] = false,
					["micro_displays_side"] = 2,
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["menu_anchor_down"] = {
						16, -- [1]
						-2, -- [2]
					},
					["row_info"] = {
						["textR_outline"] = false,
						["textL_outline"] = true,
						["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
						["texture_background_file"] = "Interface\\AddOns\\Details\\images\\bar4",
						["textL_enable_custom_text"] = false,
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
						["textR_enable_custom_text"] = false,
						["texture_background_class_color"] = false,
						["percent_type"] = 1,
						["textL_show_number"] = true,
						["space"] = {
							["right"] = 0,
							["left"] = 0,
							["between"] = 1,
						},
						["fixed_texture_background_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.3186, -- [4]
						},
						["textR_custom_text"] = "{data1}({data2}, {data3}%)",
						["start_after_icon"] = false,
						["font_face_file"] = "Fonts\\ARKai_T.ttf",
						["fixed_text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["alpha"] = 1,
						["textR_class_colors"] = false,
						["backdrop"] = {
							["enabled"] = false,
							["size"] = 12,
							["color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["texture"] = "Details BarBorder 2",
						},
						["texture_background"] = "Details Serenity",
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["no_icon"] = false,
						["font_size"] = 10,
						["textL_class_colors"] = false,
						["font_face"] = "Arial Narrow",
						["texture_class_colors"] = true,
						["height"] = 14,
						["texture_file"] = "Interface\\AddOns\\Details\\images\\bar4",
						["texture"] = "BantoBar",
						["fixed_texture_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
						},
					},
					["show_statusbar"] = false,
					["hide_icon"] = true,
					["switch_damager_in_combat"] = false,
					["statusbar_info"] = {
						["alpha"] = 1,
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["auto_hide_menu"] = {
						["left"] = false,
						["right"] = false,
					},
					["auto_current"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0.0941,
					["grab_on_top"] = false,
					["hide_in_combat"] = false,
					["backdrop_texture"] = "Details Ground",
					["window_scale"] = 1,
					["bars_grow_direction"] = 1,
					["wallpaper"] = {
						["enabled"] = false,
						["texcoord"] = {
							0, -- [1]
							1, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["anchor"] = "all",
						["height"] = 0,
						["alpha"] = 0.5,
						["width"] = 0,
					},
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = true,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["plugins_grow_direction"] = 1,
					["menu_icons_size"] = 0.9,
					["tooltip"] = {
						["n_abilities"] = 3,
						["n_enemies"] = 3,
					},
					["bg_b"] = 0.0941,
				}, -- [1]
			},
		},
		["Hyper-AzerothCore"] = {
			["capture_real"] = {
				["heal"] = true,
				["spellcast"] = true,
				["miscdata"] = true,
				["aura"] = true,
				["energy"] = true,
				["damage"] = true,
			},
			["row_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["use_row_animations"] = false,
			["segments_amount"] = 12,
			["windows_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["skin"] = "Default Skin",
			["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
			["report_to_who"] = "",
			["instances"] = {
				{
					["__pos"] = {
						["normal"] = {
							["y"] = -163.3401464918234,
							["x"] = -560.7146751774151,
							["w"] = 149.9999977648259,
							["h"] = 155.7140517873458,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["hide_in_combat_type"] = 1,
					["switch_healer_in_combat"] = false,
					["color"] = {
						0.3058, -- [1]
						0.3058, -- [2]
						0.3058, -- [3]
						0.8838, -- [4]
					},
					["menu_anchor"] = {
						16, -- [1]
						2, -- [2]
						["side"] = 2,
					},
					["bg_r"] = 0.0941,
					["skin"] = "Minimalistic v2",
					["following"] = {
						["enabled"] = false,
						["bar_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["color_buttons"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["switch_healer"] = false,
					["bars_sort_direction"] = 1,
					["hide_out_of_combat"] = false,
					["tooltip"] = {
						["n_abilities"] = 3,
						["n_enemies"] = 3,
					},
					["__was_opened"] = true,
					["StatusBarSaved"] = {
						["options"] = {
							["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["textXMod"] = 0,
								["textFace"] = "Friz Quadrata TT",
								["textStyle"] = 2,
								["textAlign"] = 0,
								["textSize"] = 10,
								["textYMod"] = 0,
							},
							["DETAILS_STATUSBAR_PLUGIN_PSEGMENT"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["segmentType"] = 2,
								["textFace"] = "Friz Quadrata TT",
								["textXMod"] = 0,
								["textStyle"] = 2,
								["textAlign"] = 0,
								["textSize"] = 10,
								["textYMod"] = 0,
							},
							["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["textXMod"] = 6,
								["textFace"] = "Friz Quadrata TT",
								["textStyle"] = 2,
								["textAlign"] = 0,
								["timeType"] = 1,
								["textSize"] = 10,
								["textYMod"] = 0,
							},
						},
						["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						["left"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
						["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
					},
					["menu_icons_size"] = 0.9,
					["switch_all_roles_in_combat"] = false,
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["version"] = 3,
					["position"] = {
						["normal"] = {
							["y"] = -163.3401464918234,
							["x"] = -560.7146751774151,
							["w"] = 149.9999977648259,
							["h"] = 155.7140517873458,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["__locked"] = false,
					["menu_alpha"] = {
						["enabled"] = false,
						["onleave"] = 1,
						["ignorebars"] = false,
						["iconstoo"] = true,
						["onenter"] = 1,
					},
					["plugins_grow_direction"] = 1,
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = true,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["desaturated_menu"] = false,
					["strata"] = "LOW",
					["bars_grow_direction"] = 1,
					["__snap"] = {
					},
					["switch_tank"] = false,
					["hide_in_combat_alpha"] = 0,
					["switch_all_roles_after_wipe"] = false,
					["menu_icons"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
						true, -- [5]
						true, -- [6]
						["space"] = -4,
						["shadow"] = false,
					},
					["switch_damager"] = false,
					["show_sidebars"] = false,
					["window_scale"] = 1,
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["backdrop_texture"] = "Details Ground",
					["show_statusbar"] = false,
					["hide_icon"] = true,
					["switch_damager_in_combat"] = false,
					["statusbar_info"] = {
						["alpha"] = 1,
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["auto_hide_menu"] = {
						["left"] = false,
						["right"] = false,
					},
					["auto_current"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0.0941,
					["grab_on_top"] = false,
					["hide_in_combat"] = false,
					["row_info"] = {
						["textR_outline"] = false,
						["textL_outline"] = true,
						["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
						["percent_type"] = 1,
						["texture"] = "BantoBar",
						["texture_background_file"] = "Interface\\AddOns\\Details\\images\\bar4",
						["textR_enable_custom_text"] = false,
						["textR_custom_text"] = "{data1}({data2}, {data3}%)",
						["fixed_texture_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
						},
						["textL_show_number"] = true,
						["space"] = {
							["right"] = 0,
							["left"] = 0,
							["between"] = 1,
						},
						["start_after_icon"] = false,
						["texture_background_class_color"] = false,
						["fixed_texture_background_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.3186, -- [4]
						},
						["font_face_file"] = "Fonts\\ARKai_T.ttf",
						["fixed_text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["alpha"] = 1,
						["textR_class_colors"] = false,
						["backdrop"] = {
							["enabled"] = false,
							["texture"] = "Details BarBorder 2",
							["color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["size"] = 12,
						},
						["texture_background"] = "Details Serenity",
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["no_icon"] = false,
						["font_size"] = 10,
						["textL_class_colors"] = false,
						["font_face"] = "Arial Narrow",
						["texture_class_colors"] = true,
						["height"] = 14,
						["texture_file"] = "Interface\\AddOns\\Details\\images\\bar4",
						["textL_enable_custom_text"] = false,
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
					},
					["menu_anchor_down"] = {
						16, -- [1]
						-2, -- [2]
					},
					["micro_displays_side"] = 2,
					["wallpaper"] = {
						["enabled"] = false,
						["texcoord"] = {
							0, -- [1]
							1, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["anchor"] = "all",
						["height"] = 0,
						["alpha"] = 0.5,
						["width"] = 0,
					},
					["stretch_button_side"] = 1,
					["switch_tank_in_combat"] = false,
					["attribute_text"] = {
						["enabled"] = true,
						["shadow"] = false,
						["side"] = 1,
						["text_size"] = 11,
						["custom_text"] = "{name}",
						["text_face"] = "Arial Narrow",
						["anchor"] = {
							-18, -- [1]
							5, -- [2]
						},
						["enable_custom_text"] = false,
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
					},
					["bg_alpha"] = 0.3181,
					["bg_b"] = 0.0941,
				}, -- [1]
			},
			["overall_flag"] = 13,
			["deadlog_limit"] = 12,
			["clear_ungrouped"] = true,
			["new_window_size"] = {
				["height"] = 130,
				["width"] = 320,
			},
			["scroll_speed"] = 2,
			["font_sizes"] = {
				["menus"] = 10,
			},
			["memory_threshold"] = 3,
			["instances_segments_locked"] = false,
			["update_speed"] = 1,
			["data_broker_text"] = "",
			["class_coords"] = {
				["HUNTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["WARRIOR"] = {
					0, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["SHAMAN"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["MAGE"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PET"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DRUID"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["DEATHKNIGHT"] = {
					0.25, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["UNKNOW"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PRIEST"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["UNGROUPPLAYER"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["Alliance"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["WARLOCK"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["ENEMY"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["Horde"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["ROGUE"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PALADIN"] = {
					0, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["MONSTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
			},
			["disable_reset_button"] = false,
			["profile_save_pos"] = true,
			["class_colors"] = {
				["HUNTER"] = {
					0.67, -- [1]
					0.83, -- [2]
					0.45, -- [3]
				},
				["WARRIOR"] = {
					0.78, -- [1]
					0.61, -- [2]
					0.43, -- [3]
				},
				["SHAMAN"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["MAGE"] = {
					0.41, -- [1]
					0.8, -- [2]
					0.94, -- [3]
				},
				["ARENA_ALLY"] = {
					0.2, -- [1]
					1, -- [2]
					0.2, -- [3]
				},
				["UNGROUPPLAYER"] = {
					0.4, -- [1]
					0.4, -- [2]
					0.4, -- [3]
				},
				["ARENA_ENEMY"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["DEATHKNIGHT"] = {
					0.77, -- [1]
					0.12, -- [2]
					0.23, -- [3]
				},
				["UNKNOW"] = {
					0.2, -- [1]
					0.2, -- [2]
					0.2, -- [3]
				},
				["PRIEST"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["PET"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
				["ENEMY"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
				},
				["WARLOCK"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
				},
				["ROGUE"] = {
					1, -- [1]
					0.96, -- [2]
					0.41, -- [3]
				},
				["PALADIN"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
				},
				["NEUTRAL"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["version"] = 1,
				["DRUID"] = {
					1, -- [1]
					0.49, -- [2]
					0.04, -- [3]
				},
			},
			["memory_ram"] = 64,
			["overall_clear_newboss"] = true,
			["segments_auto_erase"] = 1,
			["clear_graphic"] = true,
			["hotcorner_topleft"] = {
				["hide"] = false,
			},
			["overall_clear_newchallenge"] = true,
			["time_type"] = 2,
			["segments_amount_to_save"] = 5,
			["minimap"] = {
				["onclick_what_todo"] = 1,
				["radius"] = 160,
				["hide"] = false,
				["minimapPos"] = 220,
				["text_format"] = 3,
				["text_type"] = 1,
			},
			["instances_amount"] = 5,
			["max_window_size"] = {
				["height"] = 450,
				["width"] = 480,
			},
			["use_scroll"] = false,
			["only_pvp_frags"] = false,
			["default_bg_color"] = 0.0941,
			["window_clamp"] = {
				-8, -- [1]
				0, -- [2]
				21, -- [3]
				-14, -- [4]
			},
			["report_lines"] = 5,
			["trash_concatenate"] = false,
			["segments_panic_mode"] = true,
			["report_heal_links"] = false,
			["remove_realm_from_name"] = true,
			["row_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["cloud_capture"] = true,
			["standard_skin"] = false,
			["trash_auto_remove"] = true,
			["report_schema"] = 1,
			["windows_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["total_abbreviation"] = 2,
			["disable_window_groups"] = false,
			["animate_scroll"] = false,
			["tooltip"] = {
				["anchor_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["fontcolor_right"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["anchor_relative"] = "top",
				["abbreviation"] = 2,
				["anchored_to"] = 1,
				["fontsize"] = 10,
				["header_text_color"] = {
					1, -- [1]
					0.9176, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["background"] = {
					0.1411, -- [1]
					0.1411, -- [2]
					0.1411, -- [3]
					0.8763, -- [4]
				},
				["commands"] = {
				},
				["fontface"] = "Friz Quadrata TT",
				["border_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["border_texture"] = "Blizzard Tooltip",
				["border_size"] = 16,
				["fontshadow"] = false,
				["anchor_screen_pos"] = {
					507.7, -- [1]
					-350.5, -- [2]
				},
				["anchor_point"] = "bottom",
				["maximize_method"] = 1,
				["fontcolor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["show_amount"] = false,
			},
			["ps_abbreviation"] = 3,
			["default_bg_alpha"] = 0.5,
			["minimum_combat_time"] = 5,
		},
		["Shadow-AzerothCore"] = {
			["capture_real"] = {
				["heal"] = true,
				["spellcast"] = true,
				["miscdata"] = true,
				["aura"] = true,
				["energy"] = true,
				["damage"] = true,
			},
			["row_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["use_row_animations"] = false,
			["segments_amount"] = 12,
			["windows_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["skin"] = "Default Skin",
			["class_icons_small"] = "Interface\\AddOns\\Details\\images\\classes_small",
			["report_to_who"] = "",
			["instances"] = {
				{
					["__pos"] = {
						["normal"] = {
							["y"] = 0,
							["x"] = 0,
							["w"] = 320.0000715255727,
							["h"] = 129.9999980628491,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["hide_in_combat_type"] = 1,
					["switch_healer_in_combat"] = false,
					["color"] = {
						0.3058, -- [1]
						0.3058, -- [2]
						0.3058, -- [3]
						0.8838, -- [4]
					},
					["menu_anchor"] = {
						16, -- [1]
						2, -- [2]
						["side"] = 2,
					},
					["bg_r"] = 0.0941,
					["skin"] = "Minimalistic v2",
					["following"] = {
						["enabled"] = false,
						["bar_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["color_buttons"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["switch_healer"] = false,
					["bars_sort_direction"] = 1,
					["hide_out_of_combat"] = false,
					["tooltip"] = {
						["n_abilities"] = 3,
						["n_enemies"] = 3,
					},
					["__was_opened"] = true,
					["StatusBarSaved"] = {
						["options"] = {
							["DETAILS_STATUSBAR_PLUGIN_PDPS"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["textXMod"] = 0,
								["textFace"] = "Friz Quadrata TT",
								["textStyle"] = 2,
								["textAlign"] = 0,
								["textSize"] = 10,
								["textYMod"] = 0,
							},
							["DETAILS_STATUSBAR_PLUGIN_PSEGMENT"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["segmentType"] = 2,
								["textFace"] = "Friz Quadrata TT",
								["textXMod"] = 0,
								["textStyle"] = 2,
								["textAlign"] = 0,
								["textSize"] = 10,
								["textYMod"] = 0,
							},
							["DETAILS_STATUSBAR_PLUGIN_CLOCK"] = {
								["textColor"] = {
									1, -- [1]
									1, -- [2]
									1, -- [3]
									1, -- [4]
								},
								["textXMod"] = 6,
								["textFace"] = "Friz Quadrata TT",
								["textStyle"] = 2,
								["textAlign"] = 0,
								["timeType"] = 1,
								["textSize"] = 10,
								["textYMod"] = 0,
							},
						},
						["right"] = "DETAILS_STATUSBAR_PLUGIN_PDPS",
						["left"] = "DETAILS_STATUSBAR_PLUGIN_PSEGMENT",
						["center"] = "DETAILS_STATUSBAR_PLUGIN_CLOCK",
					},
					["menu_icons_size"] = 0.9,
					["switch_all_roles_in_combat"] = false,
					["instance_button_anchor"] = {
						-27, -- [1]
						1, -- [2]
					},
					["version"] = 3,
					["position"] = {
						["normal"] = {
							["y"] = 0,
							["x"] = 0,
							["w"] = 320.0000715255727,
							["h"] = 129.9999980628491,
						},
						["solo"] = {
							["y"] = 2,
							["x"] = 1,
							["w"] = 300,
							["h"] = 200,
						},
					},
					["__locked"] = false,
					["menu_alpha"] = {
						["enabled"] = false,
						["onleave"] = 1,
						["ignorebars"] = false,
						["iconstoo"] = true,
						["onenter"] = 1,
					},
					["plugins_grow_direction"] = 1,
					["total_bar"] = {
						["enabled"] = false,
						["only_in_group"] = true,
						["icon"] = "Interface\\ICONS\\INV_Sigil_Thorim",
						["color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["desaturated_menu"] = false,
					["strata"] = "LOW",
					["row_show_animation"] = {
						["anim"] = "Fade",
						["options"] = {
						},
					},
					["__snap"] = {
					},
					["switch_tank"] = false,
					["hide_in_combat_alpha"] = 0,
					["switch_all_roles_after_wipe"] = false,
					["menu_icons"] = {
						true, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
						true, -- [5]
						true, -- [6]
						["space"] = -4,
						["shadow"] = false,
					},
					["switch_damager"] = false,
					["show_sidebars"] = false,
					["menu_anchor_down"] = {
						16, -- [1]
						-2, -- [2]
					},
					["bars_grow_direction"] = 1,
					["backdrop_texture"] = "Details Ground",
					["show_statusbar"] = false,
					["hide_icon"] = true,
					["switch_damager_in_combat"] = false,
					["statusbar_info"] = {
						["alpha"] = 1,
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
					},
					["auto_hide_menu"] = {
						["left"] = false,
						["right"] = false,
					},
					["auto_current"] = true,
					["toolbar_side"] = 1,
					["bg_g"] = 0.0941,
					["grab_on_top"] = false,
					["hide_in_combat"] = false,
					["row_info"] = {
						["textR_outline"] = false,
						["textL_outline"] = true,
						["icon_file"] = "Interface\\AddOns\\Details\\images\\classes_small_alpha",
						["fixed_texture_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
						},
						["start_after_icon"] = false,
						["texture_highlight"] = "Interface\\FriendsFrame\\UI-FriendsList-Highlight",
						["textR_enable_custom_text"] = false,
						["textR_custom_text"] = "{data1}({data2}, {data3}%)",
						["textL_enable_custom_text"] = false,
						["textL_show_number"] = true,
						["space"] = {
							["right"] = 0,
							["left"] = 0,
							["between"] = 1,
						},
						["texture"] = "BantoBar",
						["texture_background_class_color"] = false,
						["fixed_texture_background_color"] = {
							0, -- [1]
							0, -- [2]
							0, -- [3]
							0.3186, -- [4]
						},
						["font_face_file"] = "Fonts\\ARKai_T.ttf",
						["fixed_text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["alpha"] = 1,
						["textR_class_colors"] = false,
						["backdrop"] = {
							["enabled"] = false,
							["texture"] = "Details BarBorder 2",
							["color"] = {
								1, -- [1]
								1, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["size"] = 12,
						},
						["texture_background"] = "Details Serenity",
						["textL_custom_text"] = "{data1}. {data3}{data2}",
						["no_icon"] = false,
						["font_size"] = 10,
						["textL_class_colors"] = false,
						["font_face"] = "Arial Narrow",
						["texture_class_colors"] = true,
						["height"] = 14,
						["texture_file"] = "Interface\\AddOns\\Details\\images\\bar4",
						["percent_type"] = 1,
						["texture_background_file"] = "Interface\\AddOns\\Details\\images\\bar4",
					},
					["window_scale"] = 1,
					["micro_displays_side"] = 2,
					["wallpaper"] = {
						["enabled"] = false,
						["texcoord"] = {
							0, -- [1]
							1, -- [2]
							0, -- [3]
							1, -- [4]
						},
						["overlay"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["anchor"] = "all",
						["height"] = 0,
						["alpha"] = 0.5,
						["width"] = 0,
					},
					["stretch_button_side"] = 1,
					["switch_tank_in_combat"] = false,
					["attribute_text"] = {
						["enabled"] = true,
						["shadow"] = false,
						["side"] = 1,
						["text_size"] = 11,
						["custom_text"] = "{name}",
						["text_face"] = "Arial Narrow",
						["anchor"] = {
							-18, -- [1]
							5, -- [2]
						},
						["enable_custom_text"] = false,
						["text_color"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
					},
					["bg_alpha"] = 0.3181,
					["bg_b"] = 0.0941,
				}, -- [1]
			},
			["minimum_combat_time"] = 5,
			["deadlog_limit"] = 12,
			["clear_ungrouped"] = true,
			["font_sizes"] = {
				["menus"] = 10,
			},
			["scroll_speed"] = 2,
			["new_window_size"] = {
				["height"] = 130,
				["width"] = 320,
			},
			["ps_abbreviation"] = 3,
			["instances_segments_locked"] = false,
			["update_speed"] = 1,
			["data_broker_text"] = "",
			["class_coords"] = {
				["HUNTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["WARRIOR"] = {
					0, -- [1]
					0.25, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PALADIN"] = {
					0, -- [1]
					0.25, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["MAGE"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["PET"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["DRUID"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["DEATHKNIGHT"] = {
					0.25, -- [1]
					0.5, -- [2]
					0.5, -- [3]
					0.75, -- [4]
				},
				["UNKNOW"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["PRIEST"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["UNGROUPPLAYER"] = {
					0.5, -- [1]
					0.75, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["Alliance"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["WARLOCK"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["ENEMY"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["Horde"] = {
					0.7421875, -- [1]
					0.98828125, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
				["SHAMAN"] = {
					0.25, -- [1]
					0.49609375, -- [2]
					0.25, -- [3]
					0.5, -- [4]
				},
				["ROGUE"] = {
					0.49609375, -- [1]
					0.7421875, -- [2]
					0, -- [3]
					0.25, -- [4]
				},
				["MONSTER"] = {
					0, -- [1]
					0.25, -- [2]
					0.75, -- [3]
					1, -- [4]
				},
			},
			["disable_reset_button"] = false,
			["profile_save_pos"] = true,
			["overall_clear_newboss"] = true,
			["memory_ram"] = 64,
			["hotcorner_topleft"] = {
				["hide"] = false,
			},
			["segments_auto_erase"] = 1,
			["windows_fade_in"] = {
				"in", -- [1]
				0.2, -- [2]
			},
			["total_abbreviation"] = 2,
			["overall_clear_newchallenge"] = true,
			["segments_amount_to_save"] = 5,
			["time_type"] = 2,
			["minimap"] = {
				["onclick_what_todo"] = 1,
				["radius"] = 160,
				["hide"] = false,
				["minimapPos"] = 220,
				["text_format"] = 3,
				["text_type"] = 1,
			},
			["instances_amount"] = 5,
			["max_window_size"] = {
				["height"] = 450,
				["width"] = 480,
			},
			["use_scroll"] = false,
			["only_pvp_frags"] = false,
			["default_bg_color"] = 0.0941,
			["window_clamp"] = {
				-8, -- [1]
				0, -- [2]
				21, -- [3]
				-14, -- [4]
			},
			["report_lines"] = 5,
			["trash_concatenate"] = false,
			["segments_panic_mode"] = true,
			["report_heal_links"] = false,
			["remove_realm_from_name"] = true,
			["row_fade_out"] = {
				"out", -- [1]
				0.2, -- [2]
			},
			["cloud_capture"] = true,
			["standard_skin"] = false,
			["class_colors"] = {
				["HUNTER"] = {
					0.67, -- [1]
					0.83, -- [2]
					0.45, -- [3]
				},
				["WARRIOR"] = {
					0.78, -- [1]
					0.61, -- [2]
					0.43, -- [3]
				},
				["ROGUE"] = {
					1, -- [1]
					0.96, -- [2]
					0.41, -- [3]
				},
				["MAGE"] = {
					0.41, -- [1]
					0.8, -- [2]
					0.94, -- [3]
				},
				["ARENA_ALLY"] = {
					0.2, -- [1]
					1, -- [2]
					0.2, -- [3]
				},
				["UNGROUPPLAYER"] = {
					0.4, -- [1]
					0.4, -- [2]
					0.4, -- [3]
				},
				["ARENA_ENEMY"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["DEATHKNIGHT"] = {
					0.77, -- [1]
					0.12, -- [2]
					0.23, -- [3]
				},
				["UNKNOW"] = {
					0.2, -- [1]
					0.2, -- [2]
					0.2, -- [3]
				},
				["PRIEST"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
				["PET"] = {
					0.3, -- [1]
					0.4, -- [2]
					0.5, -- [3]
				},
				["WARLOCK"] = {
					0.58, -- [1]
					0.51, -- [2]
					0.79, -- [3]
				},
				["version"] = 1,
				["PALADIN"] = {
					0.96, -- [1]
					0.55, -- [2]
					0.73, -- [3]
				},
				["SHAMAN"] = {
					0, -- [1]
					0.44, -- [2]
					0.87, -- [3]
				},
				["NEUTRAL"] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["ENEMY"] = {
					0.94117, -- [1]
					0, -- [2]
					0.0196, -- [3]
					1, -- [4]
				},
				["DRUID"] = {
					1, -- [1]
					0.49, -- [2]
					0.04, -- [3]
				},
			},
			["report_schema"] = 1,
			["clear_graphic"] = true,
			["trash_auto_remove"] = true,
			["disable_window_groups"] = false,
			["animate_scroll"] = false,
			["tooltip"] = {
				["anchor_offset"] = {
					0, -- [1]
					0, -- [2]
				},
				["fontcolor_right"] = {
					1, -- [1]
					0.7, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["anchor_relative"] = "top",
				["abbreviation"] = 2,
				["anchored_to"] = 1,
				["fontsize"] = 10,
				["header_text_color"] = {
					1, -- [1]
					0.9176, -- [2]
					0, -- [3]
					1, -- [4]
				},
				["background"] = {
					0.1411, -- [1]
					0.1411, -- [2]
					0.1411, -- [3]
					0.8763, -- [4]
				},
				["commands"] = {
				},
				["fontface"] = "Friz Quadrata TT",
				["border_color"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["border_texture"] = "Blizzard Tooltip",
				["border_size"] = 16,
				["fontshadow"] = false,
				["anchor_screen_pos"] = {
					507.7, -- [1]
					-350.5, -- [2]
				},
				["anchor_point"] = "bottom",
				["maximize_method"] = 1,
				["fontcolor"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
					1, -- [4]
				},
				["show_amount"] = false,
			},
			["memory_threshold"] = 3,
			["default_bg_alpha"] = 0.5,
			["overall_flag"] = 13,
		},
	},
}
