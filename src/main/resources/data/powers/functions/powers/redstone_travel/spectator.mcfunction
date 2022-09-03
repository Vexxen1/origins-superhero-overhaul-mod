execute if block ~ ~ ~ #powers:imputs run power grant @a[tag=self] powers:powers/redstone

execute if block ~ ~ ~ #powers:imputs run tp @a[tag=self] ~ ~ ~

execute if block ~ ~ ~ #powers:imputs run scale delay set pehkui:motion 1 @a[tag=self]
execute if block ~ ~ ~ #powers:imputs run scale delay set pehkui:height 1 @a[tag=self]

execute if block ~ ~ ~ #powers:imputs run scale set pehkui:motion 0 @a[tag=self]
execute if block ~ ~ ~ #powers:imputs run scale set pehkui:height 0.25 @a[tag=self]

