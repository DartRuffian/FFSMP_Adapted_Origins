execute as @s store result score @s entityHealth run data get entity @s Health 100
scoreboard players operation @s damage *= 100 numbers
scoreboard players operation @s entityHealth -= @s damage
execute as @s at @s if score @s entityHealth <= 0 numbers run summon minecraft:experience_orb ~ ~ ~ {Value:5s}
execute as @s[type=!ender_dragon] if score @s entityHealth <= 0 numbers run kill @s
execute as @s[scores={entityHealth=99..}] store result entity @s Health float 0.01 run scoreboard players get @s entityHealth
scoreboard players set @s damage 0