#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


val removeByID as IItemStack[] = [
    <mekanismgenerators:reactor>,
    <emergingtechnology:wind>,
    <emergingtechnology:piezoelectric>,
    <emergingtechnology:tidalgenerator>,
    <emergingtechnology:biomassgenerator>,
    <tinker_io:ore_crusher>
];

val removeByRecipeName as string[] = [];
val removeByModid as string[] = [];


for id in removeByID{
    recipes.remove(id);
}

for name in removeByRecipeName {
    recipes.removeByRecipeName(name);
}

for mid in removeByModid {
    recipes.removeByMod(mid);
}