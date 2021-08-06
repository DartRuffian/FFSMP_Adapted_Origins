function botworigins:raycast_start
execute as @e[tag=ray,sort=nearest,limit=1] at @s run function botworigins:raycast_finish
kill @e[tag=fail]
execute as @s at @e[tag=ray,sort=nearest,limit=1,distance=..30] align y run tp @s ~ ~ ~ 
execute at @s as @e[tag=ray,sort=nearest,limit=1,distance=..30] as @a[tag=caster,sort=nearest,limit=1] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1 1
tag @s remove caster
kill @e[tag=ray,sort=nearest,limit=1]