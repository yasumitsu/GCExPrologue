UndefineClass('Gaston')
DefineClass.Gaston = {
	__parents = { "Perk" },
	__generated_by_class = "ModItemCharacterEffectCompositeDef",


	object_class = "Perk",
	unit_reactions = {
		PlaceObj('UnitReaction', {
			Event = "OnCalcSightModifier",
			Handler = function (self, target, value, observer, other, step_pos, darkness)
				if HasPerk(target, self) and other then
					target:AddStatusEffect("Hidden")
				end
			end,
		}),
	},
	DisplayName = T(337078449531, --[[ModItemCharacterEffectCompositeDef Gaston DisplayName]] "Techniques de Furtivité"),
	Description = T(730181381461, --[[ModItemCharacterEffectCompositeDef Gaston Description]] "Due to his special training, Gaston can use the environment to hide and prepare his attacks."),
	OnAdded = function (self, obj)  end,
	OnRemoved = function (self, obj)  end,
	Icon = "Mod/GCExPrologue/Images/PerkRAZORBlu 2",
	Tier = "Personal",
}

