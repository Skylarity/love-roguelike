-- Setup
require "collisionDetection"
Class = require "hump.class"
require "player"
require "enemy"

function love.load()
	-- Game
	love.window.setTitle("Roguelike!")

	-- Window
	love.graphics.setNewFont(16)
	love.graphics.setBackgroundColor(0, 0, 0, 255)

	-- Player
	player = Player({x = (love.graphics.getWidth() / 2), y = (love.graphics.getHeight() / 2)}, 32, 32 * 8, nil, 100)

	-- Test
	-- TODO: Create enemy array
	enemy = Enemy({x = 100, y = 100}, nil, 10, 10)
end

function love.update(dt)
	player:update(dt)

	-- Quitting
	if love.keyboard.isDown("escape") then quitGame() end
end

function love.draw()
	-- Test
	-- TODO: Loop through enemy array
	enemy:draw()

	-- Draw player above enemies
	player:draw()
end

function quitGame()
	love.event.quit()
end
