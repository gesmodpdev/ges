import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/* Defined Vars */

var stairs = [] as IItemStack[];
for item in <ore:stairWood>.items {
    if item.definition.owner == "biomesoplenty" {
        stairs+=item;
    }
}
stairs += <biomesoplenty:white_sandstone_stairs>;
stairs += <biomesoplenty:mud_brick_stairs>;

var stair_materials = [] as IIngredient[];
for item in <ore:plankWood>.items {
    if item.definition.owner == "biomesoplenty" {
        stair_materials+=item;
    }
}
stair_materials += <biomesoplenty:white_sandstone:*>;
stair_materials += <biomesoplenty:mud_brick_block>;

var boats = [<biomesoplenty:boat_sacred_oak>,<biomesoplenty:boat_cherry>,<biomesoplenty:boat_umbran>,<biomesoplenty:boat_fir>,<biomesoplenty:boat_ethereal>,<biomesoplenty:boat_magic>,<biomesoplenty:boat_mangrove>,<biomesoplenty:boat_palm>,<biomesoplenty:boat_redwood>,<biomesoplenty:boat_willow>,<biomesoplenty:boat_pine>,<biomesoplenty:boat_hellbark>,<biomesoplenty:boat_jacaranda>,<biomesoplenty:boat_mahogany>,<biomesoplenty:boat_ebony>,<biomesoplenty:boat_eucalyptus>] as IItemStack[];
var boat_mat_defs = <biomesoplenty:planks_0>.definition;
var boat_slab_def_0 = <biomesoplenty:wood_slab_0>.definition;
var boat_slab_def_1 = <biomesoplenty:wood_slab_1>.definition;
var boat_materials = [] as IIngredient[][];
for i in 0 to 8 {
    var b = [boat_mat_defs.makeStack(i), boat_slab_def_0.makeStack(i)] as IIngredient[];
    boat_materials += b;
}
for i in 0 to 8 {
    var b = [boat_mat_defs.makeStack(i+8), boat_slab_def_0.makeStack(i)] as IIngredient[];
    boat_materials += b;
}

/* Removing Recipes */

// Boats
for i in 0 to boats.length {
    recipes.remove(boats[i]);
}

// Stairs
for i in 0 to stairs.length {
    recipes.remove(stairs[i]);
}

/* Adding Recipes */

// Boats
for i in 0 to boats.length {
    recipes.addShaped(boats[i], [
        [boat_materials[i][0], null, boat_materials[i][0]],
        [boat_materials[i][0], <ore:craftingToolKnives>, boat_materials[i][0]],
        [boat_materials[i][1], boat_materials[i][1], boat_materials[i][1]],
    ]);
}

//Stairs
for i in 0 to stairs.length {
    recipes.addShaped(stairs[i] * 3, [
        [stair_materials[i], null, <ore:craftingToolSaws>],
        [stair_materials[i], stair_materials[i], null],
        [stair_materials[i], stair_materials[i], stair_materials[i]],
    ]);
}