Entity = Class {}

function Entity:init(self, name, image, description, x, y, w, h)
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
end

function Entity:draw()
	-- TODO
end
