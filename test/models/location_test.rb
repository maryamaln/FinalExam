require 'test_helper'

class LocationTest < ActiveSupport::TestCase

test "the truth" do 
  assert true
end

test "cannot not have latitude" do
	location = Location.new(longitude: '12233', mail_item_id: 1)
end 

test "cannot not have longitude" do
	location = Location.new(latitude: '12233', mail_item_id: 1)
end 
test "cannot not have mail id" do
	location = Location.new(longitude: '12233', latitude: '12233')
end 


end
