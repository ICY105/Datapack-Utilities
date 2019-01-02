data modify block -29999999 0 1600 RecordItem.tag.du.player_data.online prepend value {UUIDMost:0L,UUIDLeast:0L}
data modify block -29999999 0 1600 RecordItem.tag.du.player_data.online[0].UUIDMost set from entity @s UUIDMost
data modify block -29999999 0 1600 RecordItem.tag.du.player_data.online[0].UUIDLeast set from entity @s UUIDLeast