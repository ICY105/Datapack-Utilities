
#modify item
data modify storage du:temp object set from entity @s Inventory[{Slot:-106b}]
execute unless data storage du:temp object.tag.du_dur{init:1b} run function du:player/durability/init_item

function du:player/durability/change_durability
data remove storage du:temp object.tag.display.Lore[-1]

#destroy item if broken
item entity @s weapon.offhand modify du:append_durability_lore
execute if score $player.out_0 du_data matches -1..0 run playsound minecraft:entity.item.break player @a[distance=..16]
execute if score $player.out_0 du_data matches 0 run item entity @s weapon.offhand replace minecraft:air

