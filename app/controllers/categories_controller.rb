class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
    render :index
  end

  def create
    @category = Category.create(
      name: params[:name],
      description: params[:description],
      category_image_url: params[:category_image_url]
    )
    render :show
  end

  def show
    @category = Category.find_by(id: params[:id])
    render :show
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.update(
      name: params[:name] || @category.name,
      description: params[:description] || @category.description,
      category_image_url: params[:category_image_url] || @category.category_image_url
    )
    render :show
  end

  def destroy 
    @category = Category.find_by(id: params[:id])
    @category.destroy
    render json: { message: "Category destroyed successfully" }
  end
  
end