
execute positioned ~16 0 ~16 run summon area_effect_cloud ~ 0 ~ {Tags:["du_chunk"],Duration:1200}
execute positioned ~16 0 ~ run summon area_effect_cloud ~ 0 ~ {Tags:["du_chunk"],Duration:1200}
execute positioned ~16 0 ~-16 run summon area_effect_cloud ~ 0 ~ {Tags:["du_chunk"],Duration:1200}

execute positioned ~ 0 ~16 run summon area_effect_cloud ~ 0 ~ {Tags:["du_chunk"],Duration:1200}
execute positioned ~ 0 ~ run summon area_effect_cloud ~ 0 ~ {Tags:["du_chunk","du_super_chunk"],Duration:1200}
execute positioned ~ 0 ~-16 run summon area_effect_cloud ~ 0 ~ {Tags:["du_chunk"],Duration:1200}

execute positioned ~-16 0 ~16 run summon area_effect_cloud ~ 0 ~ {Tags:["du_chunk"],Duration:1200}
execute positioned ~-16 0 ~ run summon area_effect_cloud ~ 0 ~ {Tags:["du_chunk"],Duration:1200}
execute positioned ~-16 0 ~-16 run summon area_effect_cloud ~ 0 ~ {Tags:["du_chunk"],Duration:1200}

setblock ~ 0 ~ minecraft:barrier
