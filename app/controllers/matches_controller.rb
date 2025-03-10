class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
  end

  def create
    @data = {
      team1: params[:team1],
      team2: params[:team2],
      score1: params[:score1],
      score2: params[:score2],
      stadium_id: params[:stadium_id]
    }
    @match = Match.new(@data)
    @match.save
  end

  def update
    @match = Match.find(params[:id])
    # @data =
  end


  def destroy
    @match = Match.find(params[:id])
    @match.destroy
  end
end
