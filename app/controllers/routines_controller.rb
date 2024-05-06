class RoutinesController < ApplicationController

  def create
    @routine = Routine.create(
      user_id: params[:user_id],
      exercise_id: params[:exercise_id],
    )
    render :show
  end
  
  def show
    @routine = Routine.find_by(id: params[:id])
    render :show
  end

  def index
    @routines = Routine.all
    render :index
  end


  def destroy 
    @routine = Routine.find_by(id: params[:id])
    @routine.destroy
    render json: { message: "Routine destroyed successfully" }
  end
  

end
