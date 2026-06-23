data:extend({
	{
		type = "technology",
		name = "calciner",
		icon = "__calciner__/graphics/calciner_technology_480.png",
		icon_size = 480,
		effects = {
			{ type = "unlock-recipe", recipe = "calciner" },
			{ type = "unlock-recipe", recipe = "calciner-wood-carbonization" },
			{ type = "unlock-recipe", recipe = "calciner-advanced-steel-smelting" },
			{ type = "unlock-recipe", recipe = "activated-carbon" },
		},
		prerequisites = {
			"concrete",
			"chemical-science-pack",
			"advanced-material-processing-2",
		},
		unit = {
			count = 500,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
			},
			time = 30,
		},
		order = "[calciner]",
	},
})
