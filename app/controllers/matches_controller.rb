class MatchesController < ApplicationController
  def new 
    @contestants = Match.new_contest
  end

  def create
    @match = Match.new(match_params)
    @match.save
    redirect_to new_match_url, notice: "CEO #{selected_ceo.name} appreciates your vote of confidence"
  end

  private
  def selected_ceo
    Ceo.find(params[:match][:winner])
  end

  def match_params
    params.require(:match).permit(:one, :two, :winner)
  end
end
