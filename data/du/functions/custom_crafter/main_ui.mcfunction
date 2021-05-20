
#copy items
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items

#remove valid slots
item replace block -29999999 0 1601 container.2 with air
item replace block -29999999 0 1601 container.3 with air
item replace block -29999999 0 1601 container.4 with air
item replace block -29999999 0 1601 container.11 with air
item replace block -29999999 0 1601 container.12 with air
item replace block -29999999 0 1601 container.13 with air
item replace block -29999999 0 1601 container.20 with air
item replace block -29999999 0 1601 container.21 with air
item replace block -29999999 0 1601 container.22 with air
execute if entity @s[tag=du_has_recipe] run item replace block -29999999 0 1601 container.16 with air

#move bad items if possible
execute if data block -29999999 0 1601 Items[0] run function du:custom_crafter/main_ui_clear
execute if data block -29999999 0 1601 Items[0] run function du:custom_crafter/main_ui_move

#drop bad items
execute if data block -29999999 0 1601 Items[0] at @p run loot spawn ~ ~ ~ mine -29999999 0 1601 minecraft:air{drop_contents:1b}

