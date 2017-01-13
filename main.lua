function love.load()
	-- Game
	love.window.setTitle("Roguelike!")

	-- Classic
	Object = require "classic"
	require "entity"
	require "player"

	-- Window
	love.graphics.setNewFont(16)
	love.graphics.setBackgroundColor(0, 0, 0, 255)

	-- Player
	player = Player(32)
end

function love.update(dt)
	-- Player
	player.update(player, dt)
end

function love.draw()
	-- Player
	player.draw(player)
end
