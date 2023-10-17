class ConfrenceTeamsController < ApplicationController
  before_action :set_confrence

  def index
    @teams = @confrence.teams
  end

  private

  def set_confrence
    @confrence = Confrence.find(params[:confrence_id])
  end
end
