
## $math.in_0: max output value (0-2^16)
#> $math.out_0: generated random number

loot replace block -29999999 0 1601 container.0 loot du:random
execute store result score $math.out_0 du_data run data get block -29999999 0 1601 Items[0].tag.AttributeModifiers[0].Amount 2000000
scoreboard players operation $math.out_0 du_data %= $math.in_0 du_data

#check for 0 in
execute if score $math.in_0 du_data matches 0 run scoreboard players set $math.out_0 du_data 0
