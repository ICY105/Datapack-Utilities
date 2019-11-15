
##in_0: max output value (0-2^16)
#>out_0: generated random number

loot replace block -29999999 0 1601 container.0 loot du:random
execute store result score out_0 du_data run data get block -29999999 0 1601 Items[0].tag.AttributeModifiers[0].Amount 2000000
scoreboard players operation out_0 du_data %= in_0 du_data

#check for 0 in
execute if score in_0 du_data matches 0 run scoreboard players set out_0 du_data 0
