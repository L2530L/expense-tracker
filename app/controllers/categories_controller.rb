class CategoriesController < ApplicationController
  before_action :set_category, only: [ :show, :edit, :update, :destroy ]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      # code to set up congratulations message
      flash[:success] = "Category created successfully"
      redirect_to categories_path
    else
      # code to set up error message
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: "Category edited successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @category.destroy!

    respond_to do |format|
      format.html { redirect_to categories_path, notice: "Category deleted successfully.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.expect(category: [ :name ])
  end
end
