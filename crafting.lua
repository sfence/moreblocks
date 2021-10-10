--[[
More Blocks: crafting recipes

Copyright © 2011-2020 Hugo Locurcio and contributors.
Licensed under the zlib license. See LICENSE.md for more information.
--]]

minetest.register_craft({
	output = "hades_core:stick",
	recipe = {{"hades_core:dry_shrub"},}
})

minetest.register_craft({
	output = "hades_core:stick",
	recipe = {{"group:sapling"},}
})

minetest.register_craft({
	output = "hades_core:wood",
	recipe = {
		{"hades_core:stick", "hades_core:stick"},
		{"hades_core:stick", "hades_core:stick"},
	}
})

minetest.register_craft({
	output = "hades_core:dirt_with_grass",
	type = "shapeless",
	recipe = {"hades_core:junglegrass", "hades_core:dirt"},
})

minetest.register_craft({
	output = "hades_core:mossycobble",
	type = "shapeless",
	recipe = {"hades_core:junglegrass", "hades_core:cobble"},
})

minetest.register_craft({
	output = "hades_moreblocks:wood_tile 9",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
	}
})

-- This must be registered after `hades_moreblocks:wood_tile` to avoid recipe conflicts,
-- since `hades_moreblocks:wood_tile` is part of `group:wood`
minetest.register_craft({
	output = "hades_moreblocks:wood_tile_center 9",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "hades_moreblocks:wood_tile", "group:wood"},
		{"group:wood", "group:wood", "group:wood"},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "hades_moreblocks:wood_tile",
	recipe = {"hades_moreblocks:wood_tile_flipped"}
})

minetest.register_craft({
	output = "hades_moreblocks:wood_tile_full 4",
	recipe = {
		{"hades_moreblocks:wood_tile", "hades_moreblocks:wood_tile"},
		{"hades_moreblocks:wood_tile", "hades_moreblocks:wood_tile"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:wood_tile_offset",
	recipe = {
		{"hades_core:stick"},
		{"hades_moreblocks:wood_tile_center"},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "hades_moreblocks:wood_tile_offset",
	recipe = {"hades_moreblocks:wood_tile_down"}
})

minetest.register_craft({
	type = "shapeless",
	output = "hades_moreblocks:wood_tile_offset",
	recipe = {"hades_moreblocks:wood_tile_left"}
})

minetest.register_craft({
	type = "shapeless",
	output = "hades_moreblocks:wood_tile_offset",
	recipe = {"hades_moreblocks:wood_tile_right"}
})

minetest.register_craft({
	output = "hades_moreblocks:circle_stone_bricks 5",
	recipe = {
		{"", "hades_core:stone", ""},
		{"hades_core:stone", "hades_core:coal_lump", "hades_core:stone"},
		{"", "hades_core:stone", ""},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:all_faces_tree 8",
	recipe = {
		{"hades_core:tree", "hades_core:tree", "hades_core:tree"},
		{"hades_core:tree", "", "hades_core:tree"},
		{"hades_core:tree", "hades_core:tree", "hades_core:tree"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:all_faces_jungle_tree 8",
	recipe = {
		{"hades_core:jungletree", "hades_core:jungletree", "hades_core:jungletree"},
		{"hades_core:jungletree", "", "hades_core:jungletree"},
		{"hades_core:jungletree", "hades_core:jungletree", "hades_core:jungletree"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:all_faces_pine_tree 8",
	recipe = {
		{"hades_core:pine_tree", "hades_core:pine_tree", "hades_core:pine_tree"},
		{"hades_core:pine_tree", "", "hades_core:pine_tree"},
		{"hades_core:pine_tree", "hades_core:pine_tree", "hades_core:pine_tree"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:all_faces_acacia_tree 8",
	recipe = {
		{"hades_core:acacia_tree", "hades_core:acacia_tree", "hades_core:acacia_tree"},
		{"hades_core:acacia_tree", "", "hades_core:acacia_tree"},
		{"hades_core:acacia_tree", "hades_core:acacia_tree", "hades_core:acacia_tree"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:all_faces_aspen_tree 8",
	recipe = {
		{"hades_core:aspen_tree", "hades_core:aspen_tree", "hades_core:aspen_tree"},
		{"hades_core:aspen_tree", "", "hades_core:aspen_tree"},
		{"hades_core:aspen_tree", "hades_core:aspen_tree", "hades_core:aspen_tree"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:sweeper 4",
	recipe = {
		{"hades_core:junglegrass"},
		{"hades_core:stick"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:stone_tile 9",
	recipe = {
		{"hades_core:cobble", "hades_core:cobble", "hades_core:cobble"},
		{"hades_core:cobble", "hades_core:stone", "hades_core:cobble"},
		{"hades_core:cobble", "hades_core:cobble", "hades_core:cobble"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:split_stone_tile",
	recipe = {
		{"hades_moreblocks:stone_tile"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:checker_stone_tile",
	recipe = {
		{"hades_moreblocks:split_stone_tile"},
	}
})

-- When approaching the below craft, loop back to cobblestone, which can then be used to craft stone tiles again
minetest.register_craft({
	output = "hades_core:cobble",
	recipe = {
		{"hades_moreblocks:checker_stone_tile"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:grey_bricks 2",
	type = "shapeless",
	recipe =  {"hades_core:stone", "hades_core:brick"},
})

minetest.register_craft({
	output = "hades_moreblocks:grey_bricks 2",
	type = "shapeless",
	recipe =  {"hades_core:stonebrick", "hades_core:brick"},
})

minetest.register_craft({
	output = "hades_moreblocks:empty_shelf",
	type = "shapeless",
	recipe = {"hades_moreblocks:sweeper", "hades_core:bookshelf"},
	replacements = {{"hades_core:bookshelf", "hades_core:book 3"}},
	-- When obtaining an empty shelf, return the books used in it as well
})

minetest.register_craft({
	output = "hades_moreblocks:empty_shelf",
	type = "shapeless",
	recipe = {"hades_moreblocks:sweeper", "vessels:shelf"},
	replacements = {{"vessels:shelf", "vessels:glass_bottle 3"}},
})

minetest.register_craft({
	type = "shapeless",
	output = "hades_core:bookshelf",
	recipe = {"hades_moreblocks:empty_shelf", "hades_core:book", "hades_core:book", "hades_core:book"},
})

minetest.register_craft({
	output = "hades_moreblocks:empty_shelf",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"", "", ""},
		{"group:wood", "group:wood", "group:wood"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:coal_stone_bricks 4",
	recipe = {
		{"hades_moreblocks:coal_stone", "hades_moreblocks:coal_stone"},
		{"hades_moreblocks:coal_stone", "hades_moreblocks:coal_stone"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:iron_stone_bricks 4",
	recipe = {
		{"hades_moreblocks:iron_stone", "hades_moreblocks:iron_stone"},
		{"hades_moreblocks:iron_stone", "hades_moreblocks:iron_stone"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:plankstone 4",
	recipe = {
		{"group:stone", "group:wood"},
		{"group:wood", "group:stone"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:plankstone 4",
	recipe = {
		{"group:wood", "group:stone"},
		{"group:stone", "group:wood"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:coal_checker 4",
	recipe = {
		{"hades_core:stone", "hades_core:coal_lump"},
		{"hades_core:coal_lump", "hades_core:stone"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:coal_checker 4",
	recipe = {
		{"hades_core:coal_lump", "hades_core:stone"},
		{"hades_core:stone", "hades_core:coal_lump"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:iron_checker 4",
	recipe = {
		{"hades_core:steel_ingot", "hades_core:stone"},
		{"hades_core:stone", "hades_core:steel_ingot"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:iron_checker 4",
	recipe = {
		{"hades_core:stone", "hades_core:steel_ingot"},
		{"hades_core:steel_ingot", "hades_core:stone"},
	}
})

minetest.register_craft({
	output = "hades_core:chest_locked",
	type = "shapeless",
	recipe = {"hades_core:steel_ingot", "hades_core:chest"},
})
minetest.register_craft({
	output = "hades_core:chest_locked",
	type = "shapeless",
	recipe = {"hades_core:copper_ingot", "hades_core:chest"},
})

minetest.register_craft({
	output = "hades_core:chest_locked",
	type = "shapeless",
	recipe = {"hades_core:bronze_ingot", "hades_core:chest"},
})

minetest.register_craft({
	output = "hades_core:chest_locked",
	type = "shapeless",
	recipe = {"hades_core:gold_ingot", "hades_core:chest"},
})

minetest.register_craft({
	output = "hades_moreblocks:iron_glass",
	type = "shapeless",
	recipe = {"hades_core:steel_ingot", "hades_core:glass"},
})

minetest.register_craft({
	output = "hades_core:glass",
	type = "shapeless",
	recipe = {"hades_core:coal_lump", "hades_moreblocks:iron_glass"},
})


minetest.register_craft({
	output = "hades_moreblocks:coal_glass",
	type = "shapeless",
	recipe = {"hades_core:coal_lump", "hades_core:glass"},
})

minetest.register_craft({
	output = "hades_core:glass",
	type = "shapeless",
	recipe = {"hades_core:steel_ingot", "hades_moreblocks:coal_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:clean_glass",
	type = "shapeless",
	recipe = {"hades_moreblocks:sweeper", "hades_core:glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_clean_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_moreblocks:clean_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_clean_glass",
	type = "shapeless",
	recipe = {"hades_moreblocks:sweeper", "hades_moreblocks:trap_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:glow_glass",
	type = "shapeless",
	recipe = {"hades_core:torch", "hades_core:glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:clean_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:torch", "hades_moreblocks:clean_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:clean_glow_glass",
	type = "shapeless",
	recipe = {"hades_moreblocks:sweeper", "hades_moreblocks:glow_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_core:glass", "hades_core:torch"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_moreblocks:glow_glass"},
})

-- several recipes are possible for the trap+clean+glow, we only present 3 of them
minetest.register_craft({
	output = "hades_moreblocks:trap_clean_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_moreblocks:clean_glow_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_clean_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_moreblocks:clean_glass", "hades_core:torch"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_clean_glow_glass",
	type = "shapeless",
	recipe = {"hades_moreblocks:sweeper", "hades_moreblocks:trap_glow_glass" },
})


minetest.register_craft({
	output = "hades_moreblocks:super_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:torch", "hades_core:torch", "hades_core:glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:super_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:torch", "hades_moreblocks:glow_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:clean_super_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:torch", "hades_core:torch", "hades_moreblocks:clean_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:clean_super_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:torch", "hades_moreblocks:clean_glow_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:clean_super_glow_glass",
	type = "shapeless",
	recipe = {"hades_moreblocks:sweeper", "hades_moreblocks:super_glow_glass"},
})


minetest.register_craft({
	output = "hades_moreblocks:trap_super_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_core:glass", "hades_core:torch", "hades_core:torch"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_super_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_moreblocks:super_glow_glass"},
})

-- several recipes are possible for the trap+clean+glow, we only present 4 of them
minetest.register_craft({
	output = "hades_moreblocks:trap_clean_super_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_moreblocks:clean_super_glow_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_clean_super_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_moreblocks:clean_glow_glass", "hades_core:torch"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_clean_super_glow_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_moreblocks:clean_glass", "hades_core:torch", "hades_core:torch"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_clean_super_glow_glass",
	type = "shapeless",
	recipe = {"hades_moreblocks:sweeper", "hades_moreblocks:trap_super_glow_glass" },
})


minetest.register_craft({
	output = "hades_moreblocks:coal_stone",
	type = "shapeless",
	recipe = {"hades_core:coal_lump", "hades_core:stone"},
})

minetest.register_craft({
	output = "hades_core:stone",
	type = "shapeless",
	recipe = {"hades_core:steel_ingot", "hades_moreblocks:coal_stone"},
})

minetest.register_craft({
	output = "hades_moreblocks:iron_stone",
	type = "shapeless",
	recipe = {"hades_core:steel_ingot", "hades_core:stone"},
})

minetest.register_craft({
	output = "hades_core:stone",
	type = "shapeless",
	recipe = {"hades_core:coal_lump", "hades_moreblocks:iron_stone"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_stone",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_core:stone"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_desert_stone",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_core:stone_baked"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_core:glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_obsidian_glass",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_core:obsidian_glass"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_obsidian",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_core:obsidian"},
})

minetest.register_craft({
	output = "hades_moreblocks:trap_sandstone",
	type = "shapeless",
	recipe = {"hades_core:mese_crystal_fragment", "hades_core:sandstone"},
})

minetest.register_craft({
	output = "hades_moreblocks:cactus_brick",
	type = "shapeless",
	recipe = {"hades_core:cactus", "hades_core:brick"},
})

minetest.register_craft({
	output = "hades_moreblocks:cactus_checker 4",
	recipe = {
		{"hades_core:cactus", "hades_core:stone"},
		{"hades_core:stone", "hades_core:cactus"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:cactuschecker 4",
	recipe = {
		{"hades_core:stone", "hades_core:cactus"},
		{"hades_core:cactus", "hades_core:stone"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:rope 3",
	recipe = {
		{"hades_grass:junglegrass"},
		{"hades_grass:junglegrass"},
		{"hades_grass:junglegrass"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:dirt_compressed",
	recipe = {
		{'hades_core:dirt', 'hades_core:dirt', 'hades_core:dirt'},
		{'hades_core:dirt', 'hades_core:dirt', 'hades_core:dirt'},
		{'hades_core:dirt', 'hades_core:dirt', 'hades_core:dirt'},
	}
})

minetest.register_craft({
	output = "hades_core:dirt 9",
	recipe = {{"hades_moreblocks:dirt_compressed"}},
})

minetest.register_craft({
	output = "hades_moreblocks:cobble_compressed",
	recipe = {
		{"hades_core:cobble", "hades_core:cobble", "hades_core:cobble"},
		{"hades_core:cobble", "hades_core:cobble", "hades_core:cobble"},
		{"hades_core:cobble", "hades_core:cobble", "hades_core:cobble"},
	}
})

minetest.register_craft({
	output = "hades_core:cobble 9",
	recipe = {
		{"hades_moreblocks:cobble_compressed"},
	}
})

minetest.register_craft({
	output = "hades_moreblocks:desert_cobble_compressed",
	recipe = {
		{"hades_core:desert_cobble", "hades_core:desert_cobble", "hades_core:desert_cobble"},
		{"hades_core:desert_cobble", "hades_core:desert_cobble", "hades_core:desert_cobble"},
		{"hades_core:desert_cobble", "hades_core:desert_cobble", "hades_core:desert_cobble"},
	}
})

minetest.register_craft({
	output = "hades_core:desert_cobble 9",
	recipe = {
		{"hades_moreblocks:desert_cobble_compressed"},
	}
})

minetest.register_craft({
	type = "cooking", output = "hades_moreblocks:tar", recipe = "hades_core:pine_tree",
})

minetest.register_craft({
	type = "shapeless",
	output = "hades_moreblocks:copperpatina",
	recipe = {"group:water_bucket", "hades_core:copperblock"},
	replacements = {
		{"group:water_bucket", "hades_bucket:bucket_empty"}
	}
})

minetest.register_craft({
	output = "hades_core:copper_ingot 9",
	recipe = {
		{"hades_moreblocks:copperpatina"},
	}
})

if minetest.settings:get_bool("moreblocks.circular_saw_crafting") ~= false then -- “If nil or true then”
	minetest.register_craft({
		output = "hades_moreblocks:circular_saw",
		recipe = {
			{ "",  "hades_core:steel_ingot",  "" },
			{ "group:wood",  "group:wood",  "group:wood"},
			{ "group:wood",  "",  "group:wood"},
		}
	})
end
