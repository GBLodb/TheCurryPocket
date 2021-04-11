#no_fix_recipe_book
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import scripts.grassUtils.RecipeUtils.recipeTweak;

recipeTweak(true, <flatcoloredblocks:coloredcraftingitem>, [
    [null, <ore:dye>, null],
    [<ore:dye>, <ore:nuggetIron>, <ore:dye>],
    [null, <ore:dye>, null]
]);

recipeTweak(true, <travelersbackpack:travelers_backpack>, [
    [<ore:leather>, <ore:nuggetIron>, <ore:leather>],
    [<travelersbackpack:backpack_tank>, <ore:chest>, <travelersbackpack:backpack_tank>],
    [<ore:leather>, <travelersbackpack:sleeping_bag_bottom>, <ore:leather>]
]);

recipeTweak(true, <travelersbackpack:backpack_tank>*2, [
    [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
    [<ore:nuggetIron>, <ore:paneGlass>, <ore:nuggetIron>],
    [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]
]);

recipeTweak(true, <littletiles:saw>, [
    [<ore:nuggetIron>, <ore:gemLapis>],
    [<ore:nuggetIron>, <ore:gemLapis>],
    [<ore:nuggetIron>, null]
]);

val vPlankDef as IItemDefinition = <minecraft:planks>.definition;
val bbChestDef as IItemDefinition = <bibliocraft:framedchest>.definition;
val bbLableDef as IItemDefinition = <bibliocraft:label>.definition;
for i in 0 .. 6{
    val plank as IItemStack = vPlankDef.makeStack(i);
    val lable as IItemStack = bbLableDef.makeStack(i);
    val out as IItemStack = bbChestDef.makeStack(i);
    recipeTweak(true, out, [
        [plank, plank, plank],
        [plank, lable, plank],
        [plank, <ore:chestWood>, plank]
    ]);
}

recipes.replaceAllOccurences(<bibliocraft:framingsaw>, <littletiles:saw>, <*>.only(function(item) {
    return item.definition.owner == "bibliocraft";
}));

val RAOmap as IIngredient[IItemStack] = {
    <emergingtechnology:shreddedplastic> : <ore:itemPlastic>,
    <industrialforegoing:plastic> : <ore:itemPlastic>
};

for rao in RAOmap{
    recipes.replaceAllOccurences(rao, RAOmap[rao]);
}
