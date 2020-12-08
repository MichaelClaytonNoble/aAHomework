require_relative 'super_useful'
require "byebug"
# puts "'five' == #{convert_to_int('five')}"

# debugger
begin
  feed_me_a_fruit
rescue CoffeeError
  retry
rescue => e


end


sam = BestFriend.new('', 1, '')

sam.talk_about_friendship
sam.do_friendstuff
sam.give_friendship_bracelet
