class MatchesController < ApplicationController
  def new 
    @contestants = Match.new_contest
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      flash[:success] = "#{selected_ceo.name} appreciates your vote of confidence"
      redirect_to new_match_url
    else
      flash[:error] = "Unable to record your vote"
      redirect_to new_match_url
    end
  end

  private
  def selected_ceo
    Ceo.find(params[:match][:winner])
  end

  def match_params
    params.require(:match).permit(:one, :two, :winner)
  end
end
