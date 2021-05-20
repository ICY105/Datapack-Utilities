
#mark as installed
scoreboard players set $install du_data 1

#get data version
execute store result score $minecraft.version du_data run data get entity @p DataVersion

#verify minecraft version
execute unless score $minecraft.version du_data matches 2715.. run scoreboard players set $install du_data 0
execute if score $minecraft.version du_data matches 2715.. run tellraw @a [{"color":"red","text":"Error: Datapack Utils v"},{"score":{"name":"$du.ver.major","objective":"load"}},{"text":"."},{"score":{"name":"$du.ver.minor","objective":"load"}},{"text":"."},{"score":{"name":"$du.ver.fix","objective":"load"}},{"text":" requires Minecraft 1.17. Click [here] to go to the DU download page for alternate releases.","clickEvent":{"action":"open_url","value":"https://github.com/ImCoolYeah105/Datapack-Utilities/releases"}}]
