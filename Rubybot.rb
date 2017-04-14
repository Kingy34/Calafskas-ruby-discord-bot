require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'wew', client_id: 273147529863102465, prefix: 'c-'

#commands

bot.command :ping do |event|
  event << 'I am wew , wewlafska !'

  # Here we don't have to worry about the return value because the `event << line` statement automatically returns nil.
end

bot.command(:exit, help_available: false) do |event|
  # This is a check that only allows a user with a specific ID to execute this command. Otherwise, everyone would be
  # able to shut your bot down whenever they wanted.
  break unless event.user.id == 272738271862325249 # Replace number with your ID

  bot.send_message(event.channel.id, 'wew , wewlafska :)!')
  exit
end


bot.command(:suicideTutorial) do |event|
  event.respond ('https://www.youtube.com/watch?v=wew')
end

#Only one image :c
bot.command(:somerealnudes) do |event| 
  event.respond ('http://img.wew.xxx//wew/2088/wew.jpg?2262669')
end

bot.command(:ky) do |event| 
  event.respond ('https://www.wewtube.com/watch?v=wew')
end

bot.command(:expanddong) do |event|
  event.respond ('https://www.wew.com/watch?v=iB-o1nfz6as')
end

bot.command(:pm) do |event|
  event.user.pm ('Hey wew is wewlafskas wew :) , pretty wew that I wew wew ?')
end

bot.command(:nudes) do |event|
  event.user.pm 'https://www.wewle.de/search?q=nudes&client=wew-b-ab&source=lnms&tbm=isch&sa=X&ved=0ahUKEwiAxNLt-djRAhVKSRoKHX6cCcsQ_AUICCgB&biw=946&bih=946#tbm=isch&q=nudes+naked'
end

bot.command(:kingy) do |event|
  event.respond ('wew is the wew <3')
end

bot.command(:whoami) do |event|
  event.respond ('Im wewlafskas wewcord wew programmed in wew :)! Made with wew <3.')
end

bot.command(:randomvideo) do |event|
  event.respond 'http://randomyoutube.net/watch'
end

bot.command(:imbored) do |event|
  event.respond ('wew says drink wew you wewing wew')
end

bot.command(:areyouintellegent) do |event|
  event.respond ('Not wew.... Im just a wewcord wew c: ! But wew Ill be in the wew')
end

bot.command(:porn) do |event|
  event.user.pm ('wew to the wews c: wew.com')
end

bot.command(:insult) do |event|
  event.user.pm ('wew about the wew of wew')
end

bot.command(:whydoiexist) do |event|
  event.respond ('Im wew nice wew :)! wew and wew ^u^.')
end

bot.command(:memes) do |event|
  event.respond ('https://en.wew.org/wiki/wew')
end

bot.command(:credits) do |event|
  event.respond ('Kingy : Best wew I wew :) , wewlafska : My wew <3')
end

bot.command(:trying) do |event|
  event.respond ('Trying to wew but also being wew <3.')
end

bot.command(:username) do |event|
  event.user.name
end

bot.command(:cfw) do |event|
  event.respond ('wew or wew ? Ill wew wewwew wew')
end 

bot.command(:hack) do |event|
  event.respond ('DDOSING wew')
end

bot.command(:calafska) do |event|
  event.respond ('My wewer <3') 
end

bot.command(:xthecube166) do |event|
  event.respond ('I like wew too my wew!') 
end

bot.command(:benadnam) do |event|
  event.respond 'https://i.wew.pw/wewmanwew'
end

bot.command(:senddudes) do |event|
  event.respond 'https://i.maagic.pw/wewiswew'
end

bot.command(:DarkGabbz) do |event|
  event.respond ('wewter wew')
end

bot.command(:e621) do |event|
  event.respond 'https://wew.net/'
end

bot.command(:rule34) do |event|
  event.respond 'https://wew34.xxx/'
end

bot.command(:bug) do |event|
  event.user.pm ('wew report the wew to wewlafska if you find wew !') 
end

bot.command(:say) do |event|
  event.user.respond.message
end

bot.command(:Source) do |event|
  event.respond 'https://github.com/Kingy34/Calafskas-ruby-discord-bot'
end


# Music

bot.command(:connect) do |event|
  # The `voice_channel` method returns the voice channel the user is currently in, or `nil` if the user is not in a
  # voice channel.
  channel = event.user.voice_channel

  # Here we return from the command unless the channel is not nil (i. e. the user is in a voice channel). The `next`
  # construct can be used to exit a command prematurely, and even send a message while were at it.
  next "What's wew? Join wew??? Join a wew Channel first, wew!" unless channel

  # The `voice_connect` method does everything necessary for the bot to connect to a voice channel. Afterwards the bot
  # will be connected and ready to play stuff back.
  bot.voice_connect(channel)
  "Ok, I'm wew #{channel.name}"
end

# A simple command that plays back an mp3 file.
bot.command(:play_music) do |event|
  voice_bot = event.voice
  voice_bot.play_music.mp3('data/wew.mp3')
  bot.voice_disconnect(channel)
end


bot.run
