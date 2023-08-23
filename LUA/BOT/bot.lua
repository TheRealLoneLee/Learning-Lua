local discordia = require('discordia')
local client = discordia.Client()
local dcmd = require('discordia-slash')
local config = require('./config.lua')

local help = require('./commands/help.command.lua')

-- defines the prefix for the bot
local prefix = "L!"

client:on('messageCreate', function(message)

	-- ignore messages from the bot itself
	if message.author == client.user then return end

	-- check for prefix
	if message.content:sub(1, #prefix) == prefix then
		-- extract the command and args
		local cmd, args = message.content:match('^'..prefix..'(%S+)%s*(.-)$')
		
		if cmd == 'help' then
			help.exectute(message)
		end
	end
end)


client:on('ready', function()
		print('Logged in as '..client.user.username)
end)

client:run('Bot '..config.token)