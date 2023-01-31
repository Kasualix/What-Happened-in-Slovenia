var modid as string[] = [
    "endrem",
    "relics",
    "mcsaforge",
    "dungeons_gear"
];

for i in 0 .. modid.length {
    loot.modifiers.removeByModId(modid[i]);
}