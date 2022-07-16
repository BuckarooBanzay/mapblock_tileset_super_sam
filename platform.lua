local MP = minetest.get_modpath(minetest.get_current_modname())

local rule_platform = { groups = {"platform"} }

mapblock_tileset.register_tileset("green_platform", {
    catalog = MP .. "/schematics/green_platform.zip",
    groups = {
        platform = true
    },
    disable_orientation = {
        ["super_sam:clay_dark_green"] = true,
        ["super_sam:clay_green"] = true
    },
    tiles = {
        {
            -- no sides
            positions = {{x=0,y=0,z=0}},
            rules = {},
            fallback = true,
            rotations = {0}
        },{
            -- all sides
            positions = {{x=5,y=0,z=0}},
            rules = {
                ["1,0,0"] = rule_platform,
                ["-1,0,0"] = rule_platform,
                ["0,0,1"] = rule_platform,
                ["0,0,-1"] = rule_platform
            },
            rotations = {0}
        },{
            -- one side
            positions = {{x=1,y=0,z=0}},
            rules = {
                ["1,0,0"] = rule_platform
            },
            rotations = {0,90,180,270}
        },{
            -- straight
            positions = {{x=2,y=0,z=0}},
            rules = {
                ["1,0,0"] = rule_platform,
                ["-1,0,0"] = rule_platform
            },
            rotations = {0,90}
        },{
            -- T crossing
            positions = {{x=4,y=0,z=0}},
            rules = {
                ["1,0,0"] = rule_platform,
                ["-1,0,0"] = rule_platform,
                ["0,0,-1"] = rule_platform
            },
            rotations = {0,90,180,270}
        },{
            -- corner
            positions = {{x=3,y=0,z=0}},
            rules = {
                ["-1,0,0"] = rule_platform,
                ["0,0,-1"] = rule_platform
            },
            rotations = {0,90,180,270}
        }
    }
})