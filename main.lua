function love.load()
	-- Game
	love.window.setTitle("Roguelike!")

	-- Setup
	Class = require "hump.class"
	Entity = require "entity"
	LivingEntity = require "living-entity"
	Player = require "player"

	-- Window
	love.graphics.setNewFont(16)
	love.graphics.setBackgroundColor(0, 0, 0, 255)

	-- Player
	player = Player()
end

function love.update(dt)
	player:update()
end

function love.draw()
	player:draw()
end
