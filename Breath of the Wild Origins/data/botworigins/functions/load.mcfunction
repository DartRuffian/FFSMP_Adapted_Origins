scoreboard objectives add load dummy
execute unless score load load matches 1 run function botworigins:first_load
scoreboard players set load load 1
tellraw @a {"color":"gold","text":"Enderian origin modifications loaded"}