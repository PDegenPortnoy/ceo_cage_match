class MatchesController < ApplicationController
  def show
    @contestants = Match.new_contest
  end
end
