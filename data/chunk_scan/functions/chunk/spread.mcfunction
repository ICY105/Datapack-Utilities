
execute positioned ~48 0 ~ unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..24] run summon marker ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
execute positioned ~-48 0 ~ unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..24] run summon marker ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
execute positioned ~ 0 ~48 unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..24] run summon marker ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
execute positioned ~ 0 ~-48 unless entity @e[type=marker,tag=chunk_scan.chunk,distance=..24] run summon marker ~ 0 ~ {Tags:["chunk_scan.chunk","chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}

execute positioned ~16 0 ~16 run summon marker ~ 0 ~ {Tags:["chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
execute positioned ~16 0 ~ run summon marker ~ 0 ~ {Tags:["chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
execute positioned ~16 0 ~-16 run summon marker ~ 0 ~ {Tags:["chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
execute positioned ~ 0 ~16 run summon marker ~ 0 ~ {Tags:["chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
execute positioned ~ 0 ~-16 run summon marker ~ 0 ~ {Tags:["chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
execute positioned ~-16 0 ~16 run summon marker ~ 0 ~ {Tags:["chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
execute positioned ~-16 0 ~ run summon marker ~ 0 ~ {Tags:["chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
execute positioned ~-16 0 ~-16 run summon marker ~ 0 ~ {Tags:["chunk_scan.gen","global.ignore","global.ignore.kill","global.ignore.pos"]}
