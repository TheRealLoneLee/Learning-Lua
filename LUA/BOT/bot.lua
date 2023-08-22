local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
	print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
	if message.content == '!ping' then
		message.channel:send('Pong!')
	end
end)

client:run('Bot MTE0MzY4NjQxMDE4MDc2Nzg3Ng.GLDyc5.Y5mhXB6nqEFAm21KbmLmH3uAuqpfoLccCZfd5U')