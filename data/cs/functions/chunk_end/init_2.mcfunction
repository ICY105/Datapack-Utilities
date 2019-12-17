execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625
execute at @s run fill ~ 255 ~ ~15 255 ~15 minecraft:moving_piston[facing=down]
tag @s remove cs.init