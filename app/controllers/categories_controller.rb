class CategoriesController < ApplicationController
  before_action :require_admin, except: [:index, :show]

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "mmm K, we have a new category"
      redirect_to @category
    else
      render "new"
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "ok, if that's what you really want - it's changed"
      redirect_to @category
    else
      render 'edit'
    end
  end

  def index
    # TODO  figure out how to order the categories by count 
    @categories = Category.paginate(page: params[:page], per_page: 5).order('created_at DESC')
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.paginate(page: params[:page], per_page: 5)
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def require_admin
    if !(logged_in? && current_user.admin?)
      flash[:alert] = "only admins can do that"
      redirect_to categories_path
    end
  end
end 