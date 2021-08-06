execute as @s[scores={cooldown=0}] at @s run spreadplayers ~ ~ 20 40 under 120 false @s
execute as @s[scores={cooldown=0}] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0.7 1
title @s times 10 20 10
scoreboard players operation @s count = @s cooldown
scoreboard players operation @s count /= ticksInSecond numbers
execute as @s[scores={cooldown=1..}] run title @s actionbar [{"color":"aqua","text":"You must wait "},{"color":"light_purple","score":{"name":"@s","objective":"count"}},{"color":"aqua","text":" seconds to use this again"}]
effect give @s[scores={cooldown=0}] instant_health
effect give @s[scores={cooldown=0}] blindness 5 0 true
effect give @s[scores={cooldown=0}] nausea 6 0 true
tag @s[scores={health=0..8}] add prevent
scoreboard players set @s[scores={cooldown=0}] cooldown 2400