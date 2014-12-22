require 'test_helper'

class HomePageTest < ActionDispatch::IntegrationTest
  test "root path is matches/show" do 
    assert_recognizes({controller: 'matches', action: 'show'}, '/')
  end
end
