class TeamsController < ApplicationController
  def index
    @teams = Team.all
    render json: @teams
  end

  def create
    @data = {
      full_name: params[:full_name],
      short_name: params[:short_name],
      founded: params[:founded],
      head_coach: params[:head_coach],
      president: params[:president]
    }
    @team = Team.new(@data)
    @team.save
  end

  def show
    @team = Team.find(params[:id])
    render json: @team
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
  end

  def update
    @data = {
      full_name: params[:full_name],
      short_name: params[:short_name],
      founded: params[:founded],
      head_coach: params[:head_coach],
      president: params[:president]
    }
    @team = Team.find(params[:id])
    @team.update(@data)
  end
end
