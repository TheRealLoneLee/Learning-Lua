return {
  name = 'help',
  description = 'Shows the help menu',
  execute = function (message)
    message.channel:send('Help menu')
    end
}