As of MC 1.19, Datapack Util's feature set is being split into modern embedded libraries. If you are a datapack user, you don't have to worry about this. You no longer need to download a separate library- everything will be included in the primary datapack. If you are a developer, please reference the list of new libraries for features you need:

[BlockUtils](https://github.com/ICY105/BlockUtils) - various ways to interact with blocks, currently limited to get redstone power
[ChunkScan](https://github.com/ICY105/ChunkScan) - postgen utility, compatible with any dimension
[ChunkScan.Ores](https://github.com/ICY105/ChunkScan.Ores) - extension of chunk scan adding custom ore generation
[LoottableAutosmelt](https://github.com/ICY105/LoottableAutosmelt) - custom 'enchants' such as auto smelt added via loot tables
[PlayerAction](https://github.com/ICY105/PlayerAction) - wrapper for various scoreboard and advancement triggers, including click detection
[DatapackEnergy](https://github.com/ICY105/DatapackEnergy) - universal energy system for tech datapacks like Mechanization
See also: [Smithed Libraries](https://github.com/Smithed-MC/Libraries) for nbt crafting, player damage, custom durability, and more.

## Download Here: [Releases](https://github.com/ImCoolYeah105/Datapack-Utilities/releases)

# Datapack-Utilities
Datapack Utils aims to handle various complicated tasks and simplify them into something easy to use. These days I recommend building out these tools yourself or at least understanding how they work before using DU.

Need help or want to stay up-to-date with development? Join the discord server: https://discord.gg/6uJ4eJH

Datapack Utils currently Handles:

* World generation: including custom ores and structures
* NBT Crafting APIs for crafting tables, furnaces, and campfires
* Some Math functions, including a pRNG.
* Villager based Left/Right click detection. No Carrot on a Stick needed.
* Custom Durability for any item
* Timer scoreboards
* Various player stats
* Biome Detection
* Extra block and entity tags
