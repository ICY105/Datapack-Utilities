advancement revoke @s only du:triggers/place_custom_block
scoreboard players set in_1 du_data 240
execute store result score in_0 du_data run data get entity @s SelectedItem.tag.du_id
execute at @s positioned ~ ~1.61 ~ run function du:player/blocks/trace_custom_block