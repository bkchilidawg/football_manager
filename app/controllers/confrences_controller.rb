class ConfrencesController < ApplicationController

  def index 
    @confrences = Confrence.order(created_at: :desc)
  end
  def show
    @confrence = Confrence.find(params[:id])
    @teams = @confrence.teams
    @child_count = @teams.count
  end

  def new
  end

  def edit 
   
  end

  def create
    confrence = Confrence.create!({
      name: params[:name],
      number_of_teams: params[:number_of_teams],
      power_5?: params[:power_5?] == true
    })

    redirect_to "/confrences"
  end

  def update
  @confrence = Confrence.find(params[:id])
  if @confrence.update(confrence_params)
    redirect_to confrence_path(@confrence)
  else
    render 'edit'
  end
end


def confrence_params
  params.require(:confrence).permit(:name, :number_of_teams, :power_5?)
end

end

