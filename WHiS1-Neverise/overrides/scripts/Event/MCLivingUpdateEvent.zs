import crafttweaker.api.event.living.MCLivingUpdateEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCLivingUpdateEvent>((event) => {
    var entity = event.entityLiving;
    var world = entity.world;
    if (world.remote) return;
    if ("player_head" in entity.getItemStackFromSlot(MCEquipmentSlotType.HEAD).commandString) entity.setItemStackToSlot(MCEquipmentSlotType.HEAD, <item:minecraft:iron_helmet>);
    if (entity.removeTag("eol")) {
        entity.addTag("eol");
        return;
    }
    if (entity.type.registryName.toString() == "witherstormmod:wither_storm") {
        var phase_check = entity.data.getAt("Phase");
        if (phase_check == null) return;
        if ("7" in phase_check.toString()) {
            entity.addTag("eol");
            entity.updateData({ConsumedEntities: 10000000});
        }
    }
});