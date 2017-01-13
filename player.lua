Player = Entity:extend()

function Player.new(self, newSize)
	self.w = newSize
	self.h = newSize
	self.moveSpeed = newSize * 8;
	self.x = (love.graphics.getWidth() / 2) - (newSize / 2)
	self.y = (love.graphics.getHeight() / 2) - (newSize / 2)

	self.inventory = []
end

function Player.update(self, dt)
	Player.playerMove(self, dt)
end

function Player.draw(self)
	love.graphics.setColor(255, 112, 0, 255)
	love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
end

function Player.playerMove(self, dt)
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
