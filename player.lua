Player = Class {}

function Player:init(pos, size, moveSpeed, img, health)
	self.img = img
	self.w = size
	self.h = size
	self.moveSpeed = moveSpeed;
	self.x = pos.x - (size / 2)
	self.y = pos.y - (size / 2)
	self.health = health

	self.inventory = {}
end

function Player:update(dt)
	Player:playerMove(self, dt)
end

function Player:draw()
	love.graphics.setColor(255, 112, 0, 255)
	love.graphics.rectangle("fill", self.x, self.y, self.w, self.h) -- TODO: Draw img
end

function Player:playerMove(self, dt)
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
