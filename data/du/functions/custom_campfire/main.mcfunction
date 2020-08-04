
#custom recipes
execute if data block ~ ~ ~ Items[].tag.du_smelt_id run function du:custom_campfire/process_recipe

#cleanup
execute unless block ~ ~ ~ #minecraft:campfires run kill @s
