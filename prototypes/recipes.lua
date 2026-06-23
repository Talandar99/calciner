data:extend({
	{
		type = "recipe-category",
		name = "calcining",
	},
})
data:extend({
	{
		type = "recipe",
		categories = { "calcining" },
		name = "calciner-wood-carbonization",
		icon = "__calciner__/graphics/wood-carbonization.png",
		enabled = false,
		energy_required = 4.5,
		allow_productivity = true,
		ingredients = {
			{ type = "item", name = "wood", amount = 2 },
		},
		results = { { type = "item", name = "coal", amount = 1 } },
		auto_recycle = false,
	},
	{
		type = "recipe",
		name = "calciner-advanced-steel-smelting",
		icons = {
			{ icon = "__calciner__/graphics/activated-carbon.png", icon_size = 64 },
			{ icon = "__base__/graphics/icons/steel-plate.png", icon_size = 64 },
		},
		categories = { "calcining" },
		enabled = false,
		energy_required = 16,
		ingredients = {
			{ type = "item", name = "iron-plate", amount = 5 },
			{ type = "item", name = "activated-carbon", amount = 1 },
		},
		results = { { type = "item", name = "steel-plate", amount = 2 } },
		allow_productivity = true,
		auto_recycle = false,
	},
	{
		type = "recipe",
		name = "activated-carbon",
		categories = { "calcining" },
		enabled = false,
		energy_required = 8,
		allow_productivity = true,
		ingredients = {
			{ type = "item", name = "coal", amount = 4 },
		},
		results = { { type = "item", name = "activated-carbon", amount = 1 } },
		auto_recycle = false,
	},
})

if mods["space-age"] then
	data:extend({
		{
			type = "recipe",
			categories = { "calcining" },
			name = "calciner-fish-calcining",

			icon = "__calciner__/graphics/fish-calcining.png",
			enabled = false,
			allow_productivity = true,
			energy_required = 4,
			ingredients = {
				{ type = "item", name = "raw-fish", amount = 1 },
			},
			results = { { type = "item", name = "calcite", amount = 3 } },
			auto_recycle = false,
		},
		{
			type = "recipe",
			name = "calciner-calcite-brick",
			icons = {
				{ icon = "__base__/graphics/icons/stone-brick.png", icon_size = 64 },
				{ icon = "__space-age__/graphics/icons/calcite.png", icon_size = 64, scale = 0.3, shift = { 8, 8 } },
			},
			categories = { "calcining" },
			enabled = false,
			energy_required = 4,
			ingredients = {
				{ type = "item", name = "calcite", amount = 1 },
				{ type = "item", name = "activated-carbon", amount = 1 },
			},
			results = { { type = "item", name = "stone-brick", amount = 2 } },
			allow_productivity = true,
			auto_recycle = false,
		},
		{
			type = "recipe",
			name = "activated-carbon",
			categories = { "calcining" },
			enabled = false,
			energy_required = 8,
			allow_productivity = true,
			ingredients = {
				{ type = "item", name = "carbon", amount = 2 },
			},
			results = { { type = "item", name = "activated-carbon", amount = 1 } },
			auto_recycle = false,
		},
		{
			type = "recipe",
			categories = { "calcining" },
			name = "calciner-coal-purification",
			icon = "__calciner__/graphics/coal-purification.png",
			enabled = false,
			allow_productivity = true,
			energy_required = 6,
			ingredients = {
				{ type = "item", name = "coal", amount = 2 },
			},
			results = { { type = "item", name = "carbon", amount = 1 } },
			auto_recycle = false,
		},
	})
end
