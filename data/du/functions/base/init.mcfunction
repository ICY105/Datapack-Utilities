
#set timers
scoreboard players set $base.timer_2 du_data 0
scoreboard players set $base.timer_10 du_data 0
scoreboard players set $base.timer_20 du_data 0
scoreboard players set $base.timer_100 du_data 0

#reset storage
data merge storage du:temp {list:[],object:{},var:0}
