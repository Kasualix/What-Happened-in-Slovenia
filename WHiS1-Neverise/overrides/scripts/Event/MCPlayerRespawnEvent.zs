import crafttweaker.api.event.entity.player.MCPlayerRespawnEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<MCPlayerRespawnEvent>(event => {
    var player = event.player;
    var world = player.world;
    if (world.remote || event.isEndConquered()) return;
    var server = world.asServerWorld().server;
    var name = player.name;

    if (player.removeTag("witherespawn")) {
        server.executeCommand("execute in whis:witherstorm run tp " + name + " 0 256 0", true);
        server.executeCommand("effect give " + name + " minecraft:slow_falling 60", true);
    }
});
