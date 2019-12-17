execute store result score temp_0 du_data run data get entity @s SelectedItem.tag.Damage
execute store result score temp_1 du_data run data get entity @s SelectedItem.tag.du_dur.damage
execute unless score temp_0 du_data = temp_1 du_data run function du:player/durability/damage_mainhand
