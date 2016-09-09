# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel
  def initialize(volume, channel)
    @power = false
    @volume = volume
    @channel = channel
  end
end

class Remote
  def initialize(tv)
    @tv = tv
  end

  def toggle_power
    if @tv.power == true
      @tv.power = false
    else
      @tv.power = true
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(channel)
    @tv.channel = channel
  end
end

sony = Tv.new(5, 3)
remote = Remote.new(sony)

resulta = remote.toggle_power
resultb = remote.toggle_power

if resulta == resultb
  puts 'Fail.'
else
  puts 'Pass!'
end

puts sony.volume
result = remote.increment_volume
puts sony.volume

if result == 6
  puts 'Pass!'
else
  puts 'Fail.'
end

result = remote.decrement_volume
if result == 5
  puts 'Pass!'
else
  puts 'Fail.'
end

puts sony.channel
result = remote.set_channel(8)
puts sony.channel

if result == 8
  puts 'Pass!'
else
  puts 'Fail.'
end