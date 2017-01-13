function love.load()
	-- Game
	love.window.setTitle("Roguelike!")

	-- Setup
	Class = require "hump.class"
	require "entity"
	require "creature"
	require "player"

	-- Window
	love.graphics.setNewFont(16)
	love.graphics.setBackgroundColor(0, 0, 0, 255)

	-- Player
	player = Player(32, 32 * 8)
end

function love.update(dt)
	player:update(dt)
end

function love.draw()
	player:draw()
end
