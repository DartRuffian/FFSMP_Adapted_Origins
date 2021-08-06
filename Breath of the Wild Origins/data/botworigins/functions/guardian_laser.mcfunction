function botworigins:laser_raycast_start
kill @e[tag=fail]
scoreboard players set @e[tag=target] damage 30
effect give @a[tag=target] instant_damage 1 0 true
execute as @e[tag=target] run data merge entity @s {Fire:100s}
tag @s remove caster
kill @e[tag=ray1,sort=nearest,limit=1]