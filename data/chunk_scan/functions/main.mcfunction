schedule function chunk_scan:main 4t replace
execute as @r[tag=!chunk_scan.disabled,predicate=chunk_scan:valid_dimension] at @s run function chunk_scan:player
