#priority -100

import crafttweaker.player.IPlayer;
import crafttweaker.event.BlockHarvestDropsEvent;

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    if (!event.isPlayer || event.silkTouch || event.drops.length == 0) return;
    val player as IPlayer = event.player;
    if (<ore:logWood>.matches(event.drops[0].stack)) {
        if (isNull(player.currentItem) || !(player.currentItem.toolClasses has "axe")) {
            event.drops = [];
        } 
    }
});