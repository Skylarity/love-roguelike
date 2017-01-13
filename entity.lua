Entity = Class {}

function Entity:init(name, image, description, x, y, w, h)
	self.name = name
	self.image = image
	self.description = description
	self.x = x
	self.y = y
	self.w = w
	self.h = h
end

function Entity:update()
	-- TODO

	if love.keyboard.isDown("escape") then quitGame() end
end

function Entity:draw()
	-- TODO
end

function quitGame()
	love.event.quit()
end
