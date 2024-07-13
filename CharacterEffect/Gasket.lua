UndefineClass('Gasket')
DefineClass.Gasket = {
	__parents = { "Perk" },
	__generated_by_class = "ModItemCharacterEffectCompositeDef",


	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnCalcBaseDamage",
			Handler = function (self, target, weapon, attack_target, data)
				if IsKindOf(weapon, "Firearm") and not weapon:IsFullyModified() then
					local value = self:ResolveValue("baseDamageBonus")
					data.base_damage = data.base_damage + value
					data.breakdown[#data.breakdown + 1] = { name = self.DisplayName, value = value }
				end
			end,
		}),
		PlaceObj('UnitReaction', {
			Event = "OnCalcCritChance",
			Handler = function (self, target, attacker, attack_target, action, weapon, data)
				if IsKindOf(weapon, "Firearm") and not weapon:IsFullyModified() then
					data.crit_chance = data.crit_chance + self:ResolveValue("critChanceBonus")
				end
			end,
		}),
	},
	DisplayName = T(705074527278, --[[ModItemCharacterEffectCompositeDef Gasket DisplayName]] "Not Caring"),
	Description = T(853579610940, --[[ModItemCharacterEffectCompositeDef Gasket Description]] "Due to his innate ability to not give a fuck, Haywire is immune to Panicked or Suppressed."),
	OnAdded = function (self, obj)  end,
	OnRemoved = function (self, obj)  end,
	Icon = "Mod/GCExPrologue/Images/PerkGASKETBlu 2.png",
	Tier = "Personal",
}

