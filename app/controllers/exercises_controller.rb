class ExercisesController < ApplicationController
  
  def index
    @exercises = Exercise.all
    render :index
  end

  def create
    @exercise = Exercise.create(
      name: params[:name],
      description: params[:description],
      category_id: params[:category_id],
      start_image_url: params[:start_image_url],
      end_image_url: params[:end_image_url]
    )
    render :show
  end

  def show
    @exercise = Exercise.find_by(id: params[:id])
    render :show
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.update(
      name: params[:name] || @exercise.name,
      description: params[:description] || @exercise.description,
      category_id: params[:category_id] || @exercise.category_id,
      start_image_url: params[:start_image_url] || @exercise.start_image_url,
      end_image_url: params[:end_image_url] || @exercise.end_image_url
    )
    render :show
  end

  def destroy 
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.destroy
    render json: { message: "Exercise destroyed successfully" }
  end
  
end