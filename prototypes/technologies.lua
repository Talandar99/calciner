data:extend({
	{
		type = "technology",
		name = "calciner",
		icon = "__calciner__/graphics/calciner512.png",
		icon_size = 512,
		effects = {
			{ type = "unlock-recipe", recipe = "calciner" },
			{ type = "unlock-recipe", recipe = "calciner-wood-carbonization" },
			{ type = "unlock-recipe", recipe = "calciner-advanced-steel-smelting" },
			{ type = "unlock-recipe", recipe = "activated-carbon" },
		},
		prerequisites = { "concrete", "advanced-material-processing", "chemical-science-pack" },
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
