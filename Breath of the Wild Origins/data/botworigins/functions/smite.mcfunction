scoreboard players set @s cooldown 30
scoreboard players remove @s power 1
function botworigins:raycast_start
execute at @s as @e[tag=ray1,sort=nearest,limit=1] at @s run function botworigins:laser_raycast_step
execute at @s as @e[tag=target] at @s run summon armor_stand ~ ~ ~ {Small:1b,Tags:["extinguish"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute as @e[tag=ray1,sort=nearest,limit=1] at @s if block ~ ~-1 ~ dragon_egg align xyz positioned ~0.5 ~-1 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:1b,Tags:["egg"],Invulnerable:1b,Invisible:1b}
scoreboard players operation @e[tag=target] damage = smiteDamage powers
execute as @e[tag=target] run data merge entity @s {Fire:60s}
tag @e remove target
kill @e[tag=ray1]
tag @s remove caster