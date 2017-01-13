LivingEntity = Class {__includes = {Entity}}

function LivingEntity:init(self, moveSpeed, health, attackDamage, sightRange)
	self.moveSpeed = moveSpeed
	self.health = health
	self.attackDamage = attackDamage
	self.sightRange = sightRange
end
