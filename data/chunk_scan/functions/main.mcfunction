schedule function chunk_scan:main 5t replace
execute as @r[tag=!chunk_scan.disabled] at @s run function chunk_scan:player
