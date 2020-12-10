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
debugger
begin
  sam = BestFriend.new('', 1, '')
  sam1 = BestFriend.new("Sam1", 3, '')
rescue => BestFriendError
  p "Real Friendships begin after 5 years"
  BestFriend.new('Sam',6,'Gardening')
rescue => BestFriendInitializeError
  p "Create a best friend with both a name and a favorite pasttime."
ensure
  sam = BestFriend.new('Sam', 5, 'Gardening')
end


sam.talk_about_friendship
sam.do_friendstuff
sam.give_friendship_bracelet
