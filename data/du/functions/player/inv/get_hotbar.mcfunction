data merge block -29999999 0 1601 {Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{du_air:1b}},{Slot:1b,id:"minecraft:stone",Count:1b,tag:{du_air:1b}},{Slot:2b,id:"minecraft:stone",Count:1b,tag:{du_air:1b}},{Slot:3b,id:"minecraft:stone",Count:1b,tag:{du_air:1b}},{Slot:4b,id:"minecraft:stone",Count:1b,tag:{du_air:1b}},{Slot:5b,id:"minecraft:stone",Count:1b,tag:{du_air:1b}},{Slot:6b,id:"minecraft:stone",Count:1b,tag:{du_air:1b}},{Slot:7b,id:"minecraft:stone",Count:1b,tag:{du_air:1b}},{Slot:8b,id:"minecraft:stone",Count:1b,tag:{du_air:1b}}]}

data modify block -29999999 0 1601 Items[{Slot:0b}] set from entity @s Inventory[{Slot:0b}]
data modify block -29999999 0 1601 Items[{Slot:1b}] set from entity @s Inventory[{Slot:1b}]
data modify block -29999999 0 1601 Items[{Slot:2b}] set from entity @s Inventory[{Slot:2b}]

data modify block -29999999 0 1601 Items[{Slot:3b}] set from entity @s Inventory[{Slot:3b}]
data modify block -29999999 0 1601 Items[{Slot:4b}] set from entity @s Inventory[{Slot:4b}]
data modify block -29999999 0 1601 Items[{Slot:5b}] set from entity @s Inventory[{Slot:5b}]

data modify block -29999999 0 1601 Items[{Slot:6b}] set from entity @s Inventory[{Slot:6b}]
data modify block -29999999 0 1601 Items[{Slot:7b}] set from entity @s Inventory[{Slot:7b}]
data modify block -29999999 0 1601 Items[{Slot:8b}] set from entity @s Inventory[{Slot:8b}]

data modify block -29999999 0 1601 Items[{tag:{du_air:1b}}] set value {}
