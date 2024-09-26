UndefineClass('GumpySpecialPineapple')
DefineClass.GumpySpecialPineapple = {
	__parents = { "Perk" },
	__generated_by_class = "ModItemCharacterEffectCompositeDef",


	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnCalcDamageAndEffects",
			Handler = function (self, target, attacker, attack_target, action, weapon, attack_args, hit, data)
				if target == attacker and target.team ~= attack_target.team then
					if IsKindOf(weapon, "ExplosiveProperties") then
						target:AddStatusEffect("Bleeding")
					elseif IsKindOf(weapon, "GrenadeGas") then
						target:AddStatusEffect("Slow")
					end
				end
				
				-- GrenadeGas
			end,
		}),
	},
	DisplayName = T(353051786879, --[[ModItemCharacterEffectCompositeDef GumpySpecialPineapple DisplayName]] "Gumpy special pineapple"),
	Description = T(937824707742, --[[ModItemCharacterEffectCompositeDef GumpySpecialPineapple Description]] "Gumpy can apply additional effects whenever he uses explosives."),
	OnAdded = function (self, obj)  end,
	OnRemoved = function (self, obj)  end,
	Icon = "Mod/GCExPrologue/Images/PerkGUMPYBlu 2",
	Tier = "Personal",
}

