Player = Class {__includes = {LivingEntity}}

function Player:init(self, size)
	self.w = size
	self.h = size
	self.moveSpeed = size * 8;
	self.x = (love.graphics.getWidth() / 2) - (size / 2)
	self.y = (love.graphics.getHeight() / 2) - (size / 2)

	-- self.inventory = []
end

function Player:update(dt)
	Player:playerMove()
end

function Player:draw()
	love.graphics.setColor(255, 112, 0, 255)
	love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end

function Player:playerMove(dt)
	if love.keyboard.isDown("w") then
		self.y = self.y - (self.moveSpeed * dt)
	end
	if love.keyboard.isDown("s") then
		self.y = self.y + (self.moveSpeed * dt)
	end
	if love.keyboard.isDown("a") then
		self.x = self.x - (self.moveSpeed * dt)
	end
	if love.keyboard.isDown("d") then
		self.x = self.x + (self.moveSpeed * dt)
	end
end
