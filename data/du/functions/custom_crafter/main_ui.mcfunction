
#toss out bad items
data remove block -29999999 0 1601 Items
data modify block -29999999 0 1601 Items set from block ~ ~ ~ Items
data remove block -29999999 0 1601 Items[{tag:{du_gui:1b}}]
item block -29999999 0 1601 container.2 replace air
item block -29999999 0 1601 container.3 replace air
item block -29999999 0 1601 container.4 replace air
item block -29999999 0 1601 container.11 replace air
item block -29999999 0 1601 container.12 replace air
item block -29999999 0 1601 container.13 replace air
item block -29999999 0 1601 container.16 replace air
item block -29999999 0 1601 container.20 replace air
item block -29999999 0 1601 container.21 replace air
item block -29999999 0 1601 container.22 replace air
execute if block -29999999 0 1601 #du:internal/chest-like{Items:[{}]} run loot spawn ~ ~1 ~ mine -29999999 0 1601 minecraft:air{drop_contents:1b}

#fill in ui
item block ~ ~ ~ container.0 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.1 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.5 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.6 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.7 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.8 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.9 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.10 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.14 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.15 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.17 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.18 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.19 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.23 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.24 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.25 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
item block ~ ~ ~ container.26 replace minecraft:gray_stained_glass_pane{du_gui:1b,display:{Name:'""'}} 1
