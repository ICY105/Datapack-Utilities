
# $player.in_0 du_data: damage to add to player, to 1 decimal place
# $player.in_1 du_data: 1 if should ignore armor

scoreboard players operation $entity.in_0 du_data = $player.in_0 du_data
scoreboard players operation $entity.in_1 du_data = $player.in_1 du_data
function du:entity/damage_entity
