#priority 200

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;


val oreDictAddMap as IItemStack[][IOreDictEntry] = {
    <ore:itemPlastic> : [<emergingtechnology:shreddedplastic>],
};

val oreDictRemoveMap as IItemStack[][IOreDictEntry] = {
};


for oda, item in oreDictAddMap{
    oda.add(item);
}

for odr, items in oreDictRemoveMap{
    odr.removeItems(items);
}

