--[[
More Blocks: alias definitions

Copyright © 2011-2020 Hugo Locurcio and contributors.
Licensed under the zlib license. See LICENSE.md for more information.
--]]

-- More Blocks aliases:
minetest.register_alias("sweeper", "hades_moreblocks:sweeper")
minetest.register_alias("circular_saw", "hades_moreblocks:circular_saw")
minetest.register_alias("jungle_stick", "hades_moreblocks:jungle_stick")

-- Old block/item replacement:
minetest.register_alias("hades_moreblocks:oerkkiblock", "default:mossycobble")
minetest.register_alias("hades_moreblocks:screwdriver", "screwdriver:screwdriver")

-- Node and item renaming:
minetest.register_alias("hades_moreblocks:stone_bricks", "default:stonebrick")
minetest.register_alias("hades_moreblocks:stonebrick", "default:stonebrick")
minetest.register_alias("hades_moreblocks:junglewood", "default:junglewood")
minetest.register_alias("hades_moreblocks:jungle_wood", "default:junglewood")
minetest.register_alias("hades_moreblocks:fence_junglewood", "default:fence_junglewood")
minetest.register_alias("hades_moreblocks:fence_jungle_wood", "default:fence_junglewood")
minetest.register_alias("hades_moreblocks:jungle_stick", "default:stick")

for _, t in pairs(circular_saw.names) do
	minetest.register_alias("hades_moreblocks:" .. t[1] .. "_jungle_wood" .. t[2],
			"hades_moreblocks:" .. t[1] .. "_junglewood" .. t[2])
end
minetest.register_alias("hades_moreblocks:horizontaltree", "hades_moreblocks:horizontal_tree")
minetest.register_alias("hades_moreblocks:horizontaljungletree", "hades_moreblocks:horizontal_jungle_tree")
minetest.register_alias("hades_moreblocks:stonesquare", "hades_moreblocks:stone_tile")
minetest.register_alias("hades_moreblocks:circlestonebrick", "hades_moreblocks:circle_stone_bricks")
minetest.register_alias("hades_moreblocks:ironstonebrick", "hades_moreblocks:iron_stone_bricks")
minetest.register_alias("hades_moreblocks:coalstone", "hades_moreblocks:coal_stone")
minetest.register_alias("hades_moreblocks:ironstone", "hades_moreblocks:iron_stone")
minetest.register_alias("hades_moreblocks:woodtile", "hades_moreblocks:wood_tile")
minetest.register_alias("hades_moreblocks:woodtile_full", "hades_moreblocks:wood_tile_full")
minetest.register_alias("hades_moreblocks:woodtile_centered", "hades_moreblocks:wood_tile_centered")
minetest.register_alias("hades_moreblocks:woodtile_up", "hades_moreblocks:wood_tile_offset")
minetest.register_alias("hades_moreblocks:wood_tile_up", "hades_moreblocks:wood_tile_offset")
minetest.register_alias("hades_moreblocks:woodtile_down", "hades_moreblocks:wood_tile_down")
minetest.register_alias("hades_moreblocks:woodtile_left", "hades_moreblocks:wood_tile_left")
minetest.register_alias("hades_moreblocks:woodtile_right", "hades_moreblocks:wood_tile_right")
minetest.register_alias("hades_moreblocks:coalglass", "hades_moreblocks:coal_glass")
minetest.register_alias("hades_moreblocks:ironglass", "hades_moreblocks:iron_glass")
minetest.register_alias("hades_moreblocks:glowglass", "hades_moreblocks:glow_glass")
minetest.register_alias("hades_moreblocks:superglowglass", "hades_moreblocks:super_glow_glass")
minetest.register_alias("hades_moreblocks:trapglass", "hades_moreblocks:trap_glass")
minetest.register_alias("hades_moreblocks:trapstone", "hades_moreblocks:trap_stone")
minetest.register_alias("hades_moreblocks:cactuschecker", "hades_moreblocks:cactus_checker")
minetest.register_alias("hades_moreblocks:coalchecker", "hades_moreblocks:coal_checker")
minetest.register_alias("hades_moreblocks:ironchecker", "hades_moreblocks:iron_checker")
minetest.register_alias("hades_moreblocks:cactusbrick", "hades_moreblocks:cactus_brick")
minetest.register_alias("hades_moreblocks:cleanglass", "hades_moreblocks:clean_glass")
minetest.register_alias("hades_moreblocks:emptybookshelf", "hades_moreblocks:empty_bookshelf")
minetest.register_alias("hades_moreblocks:junglestick", "hades_moreblocks:jungle_stick")
minetest.register_alias("hades_moreblocks:splitstonesquare","hades_moreblocks:split_stone_tile")
minetest.register_alias("hades_moreblocks:allfacestree","hades_moreblocks:all_faces_tree")
minetest.register_alias("hades_moreblocks:empty_bookshelf","hades_moreblocks:empty_shelf")
minetest.register_alias("hades_moreblocks:split_stone_tile_alt","hades_moreblocks:checker_stone_tile")

-- ABM for horizontal trees (fix facedir):
local horizontal_tree_convert_facedir = {7, 12, 9, 18}

minetest.register_abm({
	nodenames = {"hades_moreblocks:horizontal_tree","hades_moreblocks:horizontal_jungle_tree"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		if node.name == "hades_moreblocks:horizontal_tree" then
			node.name = "default:tree"
		else
			node.name = "default:jungletree"
		end
		node.param2 = node.param2 < 3 and node.param2 or 0
		minetest.set_node(pos, {
			name = node.name,
			param2 = horizontal_tree_convert_facedir[node.param2 + 1]
		})
	end,
})

minetest.register_lbm({
	name = "hades_moreblocks:reduce_wood_tile_redundancy",
	nodenames = {
		"hades_moreblocks:wood_tile_left",
		"hades_moreblocks:wood_tile_down",
		"hades_moreblocks:wood_tile_right",
		"hades_moreblocks:wood_tile_flipped",
	},
	action = function(pos, node)
		if node.name:find("left") then
			minetest.set_node(pos, {name = "hades_moreblocks:wood_tile_offset", param2=1})
		elseif node.name:find("down") then
			minetest.set_node(pos, {name = "hades_moreblocks:wood_tile_offset", param2=2})
		elseif node.name:find("right") then
			minetest.set_node(pos, {name = "hades_moreblocks:wood_tile_offset", param2=3})
		else -- wood_tile_flipped
			minetest.set_node(pos, {name = "hades_moreblocks:wood_tile", param2=1})
		end
		minetest.log('action', "LBM replaced " .. node.name ..
			" at " .. minetest.pos_to_string(pos))
	end,
})
