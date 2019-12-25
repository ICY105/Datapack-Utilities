
#marks spawn chunks
kill @e[type=area_effect_cloud,tag=du_spawn_chunks]
summon area_effect_cloud ~ 0 ~ {Tags:["du_spawn_chunks"],Duration:2000000000}

#schedule load message
schedule function du:load_message 2s

#Init Modules
forceload add -29999999 1600
execute in minecraft:the_end run forceload add -29999999 1600
execute in minecraft:the_nether run forceload add -29999999 1600

#init modules
function du:base/init
function du:world/init
