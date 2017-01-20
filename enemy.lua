Enemy = Class {}

function Enemy:init(pos, img, moveSpeed, health)
	self.x = pos.x
	self.y = pos.y
	self.img = img
	self.moveSpeed = moveSpeed;
	self.health = health

	self.inventory = {}
end

function Enemy:update(dt)
	-- TODO
end

function Enemy:draw()
	love.graphics.setColor(255, 0, 0, 255)
	love.graphics.rectangle("fill", self.x, self.y, 32, 32) -- TODO: Draw img
end
