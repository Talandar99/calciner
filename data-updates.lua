if mods["pelagos"] then
	data.raw["item"]["calciner"].default_import_location = "pelagos"
	table.insert(data.raw["recipe"]["calciner"].ingredients, { type = "item", name = "coconut-sealant", amount = 20 })
	data.raw["recipe"]["calciner"].surface_conditions = {
		{
			property = "pressure",
			min = 1809,
			max = 1809,
		},
	}
	data:extend({
		{
			type = "recipe",
			category = "calcining",
			name = "calciner-coconut-husk-carbonization",
			icon = "__calciner__/graphics/coconut-husk-carbonization.png",
			enabled = false,
			energy_required = 4.5,
			allow_productivity = true,
			ingredients = {
				{ type = "item", name = "coconut-husk", amount = 4 },
			},
			results = { { type = "item", name = "coal", amount = 1 } },
			auto_recycle = false,
		},
	})
end

-- special glass recipes for compatibility with mods that add glass
if mods["space-age"] then
	if data.raw.item and data.raw.item["glass"] then
		local glass = data.raw.item["glass"]
		data:extend({
			{
				type = "recipe",
				name = "calciner-mineral-glass",
				category = "calcining",
				ingredients = {
					{ type = "item", name = "calcite", amount = 4 },
				},
				results = {
					{ type = "item", name = "glass", amount = 1 },
				},
				icons = {
					{ icon = glass.icon, icon_size = 64 },
					{
						icon = "__space-age__/graphics/icons/calcite.png",
						icon_size = 64,
						scale = 0.3,
						shift = { 8, 8 },
					},
				},
				icon_size = glass.icon_size,
				allow_productivity = true,
				enabled = false,
				auto_recycle = false,
			},
		})
	elseif data.raw.item and data.raw.item["kr-glass"] then
		local glass = data.raw.item["kr-glass"]
		data:extend({
			{
				type = "recipe",
				name = "calciner-mineral-glass",
				category = "calcining",
				ingredients = {
					{ type = "item", name = "calcite", amount = 4 },
				},
				results = {
					{ type = "item", name = "kr-glass", amount = 1 },
				},
				icons = {
					{ icon = glass.icon, icon_size = 64 },
					{
						icon = "__space-age__/graphics/icons/calcite.png",
						icon_size = 64,
						scale = 0.3,
						shift = { 8, 8 },
					},
				},
				icon_size = glass.icon_size,
				allow_productivity = true,
				enabled = false,
				auto_recycle = false,
			},
		})
	end
end
if mods["Krastorio2-spaced-out"] then
	data.raw["recipe"]["calciner-advanced-steel-smelting"].ingredients = {
		{ type = "item", name = "iron-plate", amount = 5 },
		{ type = "item", name = "activated-carbon", amount = 2 },
	}

	data.raw["recipe"]["calciner-advanced-steel-smelting"].results = {
		{ type = "item", name = "steel-plate", amount = 3 },
	}
end

-- add mineral glass if glass exist
local tech = data.raw.technology["calciner"]
if tech and mods["space-age"] then
	table.insert(tech.effects, {
		type = "unlock-recipe",
		recipe = "calciner-coal-purification",
	})
	table.insert(tech.effects, {
		type = "unlock-recipe",
		recipe = "calciner-calcite-brick",
	})
	table.insert(tech.effects, {
		type = "unlock-recipe",
		recipe = "calciner-fish-calcining",
	})
end

if tech and mods["pelagos"] then
	table.insert(tech.effects, {
		type = "unlock-recipe",
		recipe = "calciner-coconut-husk-carbonization",
	})
	table.insert(tech.effects, {
		type = "unlock-recipe",
		recipe = "diesel-mining-drill",
	})
	tech.prerequisites = {
		--"diesel-mining-drill",
		--"advanced-material-processing", -- important for any planet start
		"concrete",
		"canex-excavator",
	}
	tech.research_trigger = {
		type = "build-entity",
		entity = "canex-excavator",
	}
	tech.order = "ea[pelagos]"
end

if tech and data.raw.recipe["calciner-mineral-glass"] then
	table.insert(tech.effects, {
		type = "unlock-recipe",
		recipe = "calciner-mineral-glass",
	})
end
-- add mineral glass if glass exist
local tech = data.raw.technology["calciner"]
if tech and data.raw.recipe["calciner-mineral-glass"] then
	table.insert(tech.effects, {
		type = "unlock-recipe",
		recipe = "calciner-mineral-glass",
	})
end
