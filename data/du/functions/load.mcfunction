
#marks spawn chunks
kill @e[type=area_effect_cloud,tag=du_spawn_chunks]
summon area_effect_cloud ~ 0 ~ {Tags:["du_spawn_chunks"],Duration:2000000000}

#schedule load message
schedule function du:load_message 1s

#Init Modules
scoreboard players set is_loaded du_data 0
scoreboard players set worldgen du_data 0
function du:load_chunks
function du:base/check_static_region
function du:world/init
function du:player/init
