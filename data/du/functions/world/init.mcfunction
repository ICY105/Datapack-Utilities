
#clear existing registry
data merge storage du:ore_reg {overworld:[],end:[],nether:[]}
data merge storage du:struct_reg {overworld:{tiny:[],small:[],medium:[],large:[]},end:{tiny:[],small:[],medium:[],large:[]},nether:{tiny:[],small:[],medium:[],large:[]}}

#reset scores
scoreboard players set $world.reg_id du_data 1
execute store result score $world.seed du_data run seed

function structs:start
