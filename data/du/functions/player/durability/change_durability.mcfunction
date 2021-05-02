
### Process Durability

#load data
execute store result score $player.temp_0 du_data run data get storage du:temp object.tag.du_dur.dur
execute store result score $player.temp_1 du_data run data get storage du:temp object.tag.du_dur.damage
execute store result score $player.temp_2 du_data run data get storage du:temp object.tag.Damage
execute store result score $player.temp_3 du_data run data get storage du:temp object.tag.du_dur.max_dur
function du:player/durability/get_max_durability

#change internal dur value
scoreboard players operation $player.temp_1 du_data -= $player.temp_2 du_data
scoreboard players operation $player.temp_0 du_data += $player.temp_1 du_data
scoreboard players operation $player.temp_1 du_data += $player.temp_2 du_data
execute if score $player.temp_4 du_data matches 1.. if score $player.temp_0 du_data > $player.temp_4 du_data run scoreboard players operation $player.temp_0 du_data = $player.temp_4 du_data
execute if score $player.temp_0 du_data matches ..-1 run scoreboard players set $player.temp_0 du_data -1
execute if score $player.temp_4 du_data matches 1.. store result storage du:temp object.tag.du_dur.dur int 1 run scoreboard players get $player.temp_0 du_data

#set dur bar
scoreboard players operation $player.temp_5 du_data = $player.temp_4 du_data
scoreboard players operation $player.temp_6 du_data = $player.temp_4 du_data
scoreboard players remove $player.temp_6 du_data 8
scoreboard players operation $player.temp_5 du_data *= $player.temp_0 du_data
scoreboard players operation $player.temp_5 du_data /= $player.temp_3 du_data
scoreboard players operation $player.temp_4 du_data -= $player.temp_5 du_data

execute if score $player.temp_4 du_data matches 1.. if score $player.temp_4 du_data > $player.temp_6 du_data run scoreboard players operation $player.temp_4 du_data = $player.temp_6 du_data
execute if score $player.temp_4 du_data matches 1.. store result storage du:temp object.tag.Damage int 1 run scoreboard players get $player.temp_4 du_data
execute if score $player.temp_4 du_data matches 1.. store result storage du:temp object.tag.du_dur.damage int 1 run data get storage du:temp object.tag.Damage

#change durability of unbreakable items
execute if score $player.temp_4 du_data matches 0 store result score $player.temp_0 du_data run data get storage du:temp object.tag.du_dur.dur
execute if score $player.temp_4 du_data matches 0 run scoreboard players remove $player.temp_0 du_data 1
execute if score $player.temp_4 du_data matches 0 store result storage du:temp object.tag.du_dur.dur int 1 run scoreboard players get $player.temp_0 du_data

#output state
scoreboard players set $player.out_0 du_data 1
execute if score $player.temp_0 du_data matches ..-1 if data storage du:temp object.tag.du_dur run scoreboard players set $player.out_0 du_data 0
execute if score $player.temp_0 du_data matches ..-1 if data storage du:temp object.tag.du_dur{no_break:1b} run scoreboard players set $player.out_0 du_data -1
