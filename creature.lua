Creature = Class {__includes = {Entity}}

function Creature:init(moveSpeed, health, attackDamage, sightRange)
	self.moveSpeed = moveSpeed
	self.health = health
	self.attackDamage = attackDamage
	self.sightRange = sightRange
end
