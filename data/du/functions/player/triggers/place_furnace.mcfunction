advancement revoke @s only du:triggers/furnace
advancement revoke @s only du:triggers/place_blast_furnace
advancement revoke @s only du:triggers/place_smoker
advancement revoke @s only du:triggers/place_campfire

scoreboard players set $crafting.in_0 du_data 240
execute anchored eyes positioned ^ ^ ^ run function du:custom_furnace/place
