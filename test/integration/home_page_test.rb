require 'test_helper'

class HomePageTest < ActionDispatch::IntegrationTest
  test "root path is matches/new" do 
    assert_recognizes({controller: 'matches', action: 'new'}, '/')
  end
end
