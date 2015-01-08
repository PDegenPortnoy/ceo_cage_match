require 'test_helper'

describe MatchesController do

  it "should get new" do
    get :new
    assert_response :success
    contestants = assigns(:contestants)
    assert_equal 2, contestants.size
    contestants.each do |contestant|
      assert_select 'p', {text: "CEO Name: #{contestant.name}"}
      assert_select 'p', {text: "Company:  #{contestant.company}"} # Brittle: Notice Spacing
    end
  end

  it "show has like button" do
    get :new
    contestants = assigns(:contestants)
    contestants.each do |contestant|
      assert_select "button#contestant_#{contestant.id}", {text: "Like"} 
    end
  end

  it "Like vote increases CEO's like count and score" do
    @ceo_1 = ceos(:one)
    @ceo_2 = ceos(:two)
    assert_difference('@ceo_1.wins') do
      post :create, match: {one: @ceo_1.id, two: @ceo_2.id, winner: @ceo_1.id}
    end
  end
    
  describe "voting" do
    before do
      @ceo_1 = ceos(:one)
      @ceo_2 = ceos(:two)
      post :create, match: {one: @ceo_1.id, two: @ceo_2.id, winner: @ceo_1.id}
    end

    it "redirect to the new match page after create" do
      assert_redirected_to new_match_url
    end

    it "after create it shows the flash message" do 
      assert_select '*', {text: "CEO #{@ceo_1.name} appreciates your vote of confidence"}
    end
  end


end
