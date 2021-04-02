import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/* Defined Vars */
val pickaxes = [<minecraft:wooden_pickaxe>, <minecraft:stone_pickaxe>, <minecraft:iron_pickaxe>, <minecraft:golden_pickaxe>, <minecraft:diamond_pickaxe>] as IItemStack[];
val axes = [<minecraft:wooden_axe>, <minecraft:stone_axe>, <minecraft:iron_axe>, <minecraft:golden_axe>, <minecraft:diamond_axe>] as IItemStack[];
val shovels = [<minecraft:wooden_shovel>, <minecraft:stone_shovel>, <minecraft:iron_shovel>, <minecraft:golden_shovel>, <minecraft:diamond_shovel>] as IItemStack[];
val hoes = [<minecraft:wooden_hoe>, <minecraft:stone_hoe>, <minecraft:iron_hoe>, <minecraft:golden_hoe>, <minecraft:diamond_hoe>] as IItemStack[];
val swords = [<minecraft:wooden_sword>, <minecraft:stone_sword>, <minecraft:iron_sword>, <minecraft:golden_sword>, <minecraft:diamond_sword>] as IItemStack[];

val stair_materials = [<minecraft:planks:0>,<minecraft:cobblestone>,<minecraft:brick_block>, <ore:stoneBricks>,<minecraft:nether_brick>,<minecraft:sandstone:*>,<minecraft:planks:1>,<minecraft:planks:2>,<minecraft:planks:3>,<minecraft:quartz_block:*>,<minecraft:planks:4>,<minecraft:planks:5>,<minecraft:red_sandstone:*>,<minecraft:purpur_block>,] as IIngredient[];
val stairs = [<minecraft:oak_stairs>,<minecraft:stone_stairs>,<minecraft:brick_stairs>,<minecraft:stone_brick_stairs>,<minecraft:nether_brick_stairs>,<minecraft:sandstone_stairs>,<minecraft:spruce_stairs>,<minecraft:birch_stairs>,<minecraft:jungle_stairs>,<minecraft:quartz_stairs>,<minecraft:acacia_stairs>,<minecraft:dark_oak_stairs>,<minecraft:red_sandstone_stairs>,<minecraft:purpur_stairs>,] as IItemStack[];

val boats = [<minecraft:boat>,<minecraft:spruce_boat>,<minecraft:birch_boat>,<minecraft:jungle_boat>,<minecraft:acacia_boat>,<minecraft:dark_oak_boat>,] as IItemStack[];
val boat_materials = [[<minecraft:planks:0>, <minecraft:wooden_slab:0>],[<minecraft:planks:1>, <minecraft:wooden_slab:1>],[<minecraft:planks:2>, <minecraft:wooden_slab:2>],[<minecraft:planks:3>, <minecraft:wooden_slab:3>],[<minecraft:planks:4>, <minecraft:wooden_slab:4>],[<minecraft:planks:5>, <minecraft:wooden_slab:5>],] as IIngredient[][];

var slabs = [] as IItemStack[];
val stone_slab_def = <minecraft:stone_slab>.definition;
val wood_slab_def = <minecraft:wooden_slab>.definition;
for i in 0 to 8 {
    if i != 2 {
        slabs += stone_slab_def.makeStack(i);
    }
}
for i in 0 to 6 {
    slabs += wood_slab_def.makeStack(i);
}
slabs += <minecraft:stone_slab2>;
slabs += <minecraft:purpur_slab>;
var slab_materials = [<minecraft:stone>, <minecraft:sandstone:*>, <minecraft:cobblestone>, <minecraft:brick_block>, <minecraft:stonebrick:*>, <minecraft:nether_brick>, <minecraft:quartz_block:*>] as IIngredient[];
val wood_plank_def = <minecraft:planks>.definition;
for i in 0 to 6 {
    slab_materials += wood_plank_def.makeStack(i);
}
slab_materials += <minecraft:red_sandstone:*>;
slab_materials += <minecraft:purpur_block>;

val dye_oredict = [<ore:dyeBlack>,<ore:dyeRed>,<ore:dyeGreen>,<ore:dyeBrown>,<ore:dyeBlue>,<ore:dyePurple>,<ore:dyeCyan>,<ore:dyeLightGray>,<ore:dyeGray>,<ore:dyePink>,<ore:dyeLime>,<ore:dyeYellow>,<ore:dyeLightBlue>,<ore:dyeMagenta>,<ore:dyeOrange>,<ore:dyeWhite>,] as IIngredient[];

var bed_defs = <minecraft:bed>.definition;
var carpet_defs = <minecraft:carpet>.definition;
var wool_defs = <minecraft:wool>.definition;

/* Recipe Removal */

// Crafting Table
recipes.remove(<minecraft:crafting_table>);

// Slabs
for i in 0 to slabs.length {
    recipes.remove(slabs[i]);
}

// Ladder
recipes.remove(<minecraft:ladder>);

// Stairs
for i in 0 to stairs.length {
    recipes.remove(stairs[i]);
}

// Chest
recipes.remove(<minecraft:chest>);

// Bed
for i in 0 to 16 {
    recipes.remove(bed_defs.makeStack(i));
}

// Boat
for i in 0 to boats.length {
    recipes.remove(boats[i]);
}

// Carpets
for i in 0 to 16 {
    recipes.remove(carpet_defs.makeStack(i));
}

// Fences

// Wool (non-white, mainly for dye recipes)
for i in 1 to 16 {
    recipes.remove(wool_defs.makeStack(i));
}

/* Recipe Addition */

// Crafting Table
recipes.addShaped(<minecraft:crafting_table>, [
    [<ore:craftingToolSaws>, <ore:craftingToolHardHammers>],
    [<ore:craftingToolKnives>, <ore:logWood>]
]);

// Ladder
var short_wood_stick = <gregtech:meta_item_1:16196>;
recipes.addShaped(<minecraft:ladder>, [
    [<minecraft:stick>, <minecraft:string>, <minecraft:stick>],
    [short_wood_stick, <minecraft:stick>, short_wood_stick],
    [<minecraft:stick>, <minecraft:string>, <minecraft:stick>],
]);

// Stairs
for i in 0 to stairs.length {
    recipes.addShaped(stairs[i] * 3, [
        [stair_materials[i], null, <ore:craftingToolSaws>],
        [stair_materials[i], stair_materials[i], null],
        [stair_materials[i], stair_materials[i], stair_materials[i]],
    ]);
}

// Slabs
for i in 0 to slabs.length {
    recipes.addShapeless(slabs[i], [slab_materials[i], <ore:craftingToolSaws>]);
}

// Chest
recipes.addShaped(<minecraft:chest>, [
    [<ore:logWood>, <ore:plankWood>, <ore:logWood>],
    [<ore:plankWood>, <ore:craftingToolSoftHammers>, <ore:plankWood>],
    [<ore:logWood>, <ore:plankWood>, <ore:logWood>],
]);

// Wool
for i in 0 to 16 {
    recipes.addShaped(wool_defs.makeStack(i) * 7, [
        [<minecraft:wool:*>, <minecraft:wool:*>, <minecraft:wool:*>],
        [<minecraft:wool:*>, dye_oredict[15-i], <minecraft:wool:*>],
        [<minecraft:wool:*>, <openblocks:paintbrush>, <minecraft:wool:*>]
    ]);
}

// Carpets
for i in 0 to 16 {
    recipes.addShaped(carpet_defs.makeStack(i), [
        [null, <ore:craftingToolSaws>, null],
        [wool_defs.makeStack(i),wool_defs.makeStack(i),wool_defs.makeStack(i),]
    ]);

    recipes.addShaped(carpet_defs.makeStack(i) * 7, [
        [<minecraft:carpet:*>, <minecraft:carpet:*>, <minecraft:carpet:*>],
        [<minecraft:carpet:*>, dye_oredict[15-i], <minecraft:carpet:*>],
        [<minecraft:carpet:*>, <openblocks:paintbrush>, <minecraft:carpet:*>]
    ]);
}

// Bed
for i in 0 to 16 {
    recipes.addShaped(bed_defs.makeStack(i), [
        [carpet_defs.makeStack(i),carpet_defs.makeStack(i),carpet_defs.makeStack(i)],
        [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>],
        [<ore:fenceWood>,<ore:craftingToolSoftHammers>,<ore:fenceWood>]
    ]);
}

// Boats
for i in 0 to boats.length {
    recipes.addShaped(boats[i], [
        [boat_materials[i][0], null, boat_materials[i][0]],
        [boat_materials[i][0], <ore:craftingToolKnives>, boat_materials[i][0]],
        [boat_materials[i][1], boat_materials[i][1], boat_materials[i][1]],
    ]);
}

/* JEI Removal */