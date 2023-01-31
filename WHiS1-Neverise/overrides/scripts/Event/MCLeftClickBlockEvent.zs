import crafttweaker.api.event.entity.player.interact.MCLeftClickBlockEvent;
import crafttweaker.api.util.MCEquipmentSlotType; 
import crafttweaker.api.events.CTEventManager;

var s = "spaceking";

CTEventManager.register<MCLeftClickBlockEvent>((event) => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var blockPos = event.getBlockPos();

    if (player.isSneaking() && s in player.getItemStackFromSlot(MCEquipmentSlotType.HEAD).commandString && s in player.getItemStackFromSlot(MCEquipmentSlotType.CHEST).commandString && s in player.getItemStackFromSlot(MCEquipmentSlotType.LEGS).commandString && s in player.getItemStackFromSlot(MCEquipmentSlotType.FEET).commandString) {
        player.give(<item:aoa3:ancient_rock>.withTag({Pos_x: blockPos.x, Pos_y: blockPos.y, Pos_z: blockPos.z}));
        world.setBlockState(blockPos, <blockstate:minecraft:air>);
    }
});