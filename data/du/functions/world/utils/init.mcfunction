
#clear existing registry
data merge storage du:ore_reg {ores:[]}
data merge storage du:struct_reg {structures:[]}

#reset scores
scoreboard players set $world.reg_id du_data 1
execute store result score $world.seed du_data run seed
