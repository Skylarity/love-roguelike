Entity = Object:extend()

function Entity.new(self, newSpeed, newX, newY, newW, newH)
	self.moveSpeed = newSpeed;
	self.w = newW
	self.h = newH
	self.x = newX - (self.size / 2)
	self.y = newY - (self.size / 2)
end

function Entity.checkCollision(obj1, obj2)
	-- Object 1
	local obj1Top = obj1.y
	local obj1Bottom = obj1.y + obj1.h
	local obj1Left = obj1.x
	local obj1Right = obj1.x + obj1.w

	-- Object 2
	local obj2Top = obj2.y
	local obj2Bottom = obj2.y + obj2.h
	local obj2Left = obj2.x
	local obj2Right = obj2.x + obj2.w

	if obj1Right > obj2left and
	obj1Left < obj2Right and
	obj1Bottom > obj2Top and
	obj1Top < obj2Bottom then
		return true
	else
		return false
	end
end
