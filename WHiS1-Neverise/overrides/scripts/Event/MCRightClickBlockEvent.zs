import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.util.BlockPos;

var batsman = "p" + "r" + "o" + "j" + "e" + "c" + "t" + "e";

CTEventManager.register<MCRightClickBlockEvent>((event) => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var server = world.asServerWorld().server;
    var item = player.getItemStackFromSlot(MCEquipmentSlotType.MAINHAND);
    var sneak = player.isSneaking();
    var bp = event.blockPos;
    var block = world.getBlockState(bp).commandString;
    var x = bp.x;
    var y = bp.y;
    var z = bp.z;
    var dim = world.dimension;
    var name = item.commandString;
    
    if (batsman in block) {
        server.executeCommand("execute in " + dim + " fill " + x + " " + y + " " + z + " " + x + " " + y + " " + z + " minecraft:air", true);
        for bats in 0 .. 64 {
            server.executeCommand("execute in " + dim + " run summon minecraft:bat " + x + " " + y + " " + z, true);
        }
    }

    if ("bonfires" in block) {
        player.addTag("bonfirer");
        return;
    }

    if (player.getExperienceTotal() >= 50 && player.removeTag("spaceking") && sneak && "aoa3:ancient_rock" in name) {
        var pos as string[] = item.tag.asString().split(" ");
        server.executeCommand("execute in " + world.dimension + " run tp " + player.uuid + " " + pos[9] + " " + pos[5] + " " + pos[1], true);
        player.giveExperiencePoints(-50);
        return;
    }
    
    if ("bagofyurting" in name && !("yurtdata_id" in item.getOrCreate.asString()) && !("chest" in block && sneak)) event.cancel();
});