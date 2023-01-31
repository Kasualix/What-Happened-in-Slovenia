import crafttweaker.api.event.block.MCBlockBreakEvent;
import crafttweaker.api.events.CTEventManager;

var mobs as string[] = [
    "zombie",
    "skeleton",
    "spider",
    "vindicator",
    "pillager"
];

CTEventManager.register<MCBlockBreakEvent>((event) => {
    var player = event.player;
    var world = player.world;
    if (world.remote) return;
    var pos = player.position;
    if ("ba_bt:bt_land_spawner" in event.state.commandString) world.asServerWorld().server.executeCommand("execute in " + world.dimension + " run summon " + mobs[world.random.nextInt(0, 4)] + " " + pos.x + " " + pos.y + " " + pos.z, true);
});