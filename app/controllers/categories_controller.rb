class CategoriesController < ApplicationController

  def index
    @category = Category.all
  end
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Exhibition Created"
      redirect_to root_path

    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
    @categories = Category.all
    @images = @category.images

  end

  def update
    @category = Category.find(params[:id])


    if @category.update(category_params)
      flash[:notice] = "Exhibition Updated"
      redirect_to category_path(params[:id])

    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find_by_id(params[:category_id])
    @category.destroy

    @image = Image.find(params[:id])
    @image.destroy

    flash[:notice] = "Image deleted"

    redirect_to images_path
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @images = @category.images
  end

  private
    def category_params
      params.require(:category).permit(:name, :description)
    end
end
