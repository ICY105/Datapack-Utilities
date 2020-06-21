
#timers
scoreboard players add $base.timer_2 du_data 1
execute if score $base.timer_2 du_data matches 2.. run scoreboard players set $base.timer_2 du_data 0

scoreboard players add $base.timer_10 du_data 1
execute if score $base.timer_10 du_data matches 10.. run scoreboard players set $base.timer_10 du_data 0

scoreboard players add $base.timer_20 du_data 1
execute if score $base.timer_20 du_data matches 20.. run scoreboard players set $base.timer_20 du_data 0

scoreboard players add $base.timer_100 du_data 1
execute if score $base.timer_100 du_data matches 100.. run scoreboard players set $base.timer_100 du_data 0

#forceloaded chunk
execute if score $base.timer_100 du_data matches 1 as @e[tag=du_forced_chunk] at @s unless entity @e[distance=16..] run forceload remove ~ ~
