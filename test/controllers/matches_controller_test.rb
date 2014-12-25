require 'test_helper'

class MatchesControllerTest < ActionController::TestCase

  test "should get show" do
    get :show
    assert_response :success
    contestants = assigns(:contestants)
    assert_not_nil contestants
    assert_equal 2, contestants.size
    contestants.each do |contestant|
      assert_select 'p', {text: "CEO Name: #{contestant.name}"}
      assert_select 'p', {text: "Company:  #{contestant.company}"} # Brittle: Notice Spacing
    end
  end

  test "show has like button" do
    get :show
    contestants = assigns(:contestants)
    contestants.each do |contestant|
      assert_select "button#contestant_#{contestant.id}", {text: "Like"} 
    end
  end

end
