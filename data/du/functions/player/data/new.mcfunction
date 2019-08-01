function du:player/head/store_head

data modify block -29999999 0 1600 RecordItem.tag.du.player_data.online prepend value {UUIDMost:0L,UUIDLeast:0L,name:"",suuid:""}
data modify block -29999999 0 1600 RecordItem.tag.du.player_data.online[0].UUIDMost set from entity @s UUIDMost
data modify block -29999999 0 1600 RecordItem.tag.du.player_data.online[0].UUIDLeast set from entity @s UUIDLeast
data modify block -29999999 0 1600 RecordItem.tag.du.player_data.online[0].name set from block -29999999 0 1601 Items[0].tag.SkullOwner.Name
data modify block -29999999 0 1600 RecordItem.tag.du.player_data.online[0].suuid set from block -29999999 0 1601 Items[0].tag.SkullOwner.Id