class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[ show edit update destroy ]

  # GET /expenses or /expenses.json
  def index
    @categories = current_user.categories.order(:name)

    @expenses = current_user.expenses.includes(:category)

    if params[:category_id].present?
      @expenses = @expenses.where(category_id: params[:category_id])
    end

    @expenses = @expenses.order(expense_date: :desc)
  end

  # GET /expenses/1 or /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses or /expenses.json
  def create
    @expense = current_user.expenses.build(expense_params)

    respond_to do |format|
      if @expense.save
        format.html { redirect_to expenses_path, notice: "Expense was successfully created." }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @expense.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /expenses/1 or /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to expenses_path, notice: "Expense was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @expense.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /expenses/1 or /expenses/1.json
  def destroy
    @expense.destroy!

    respond_to do |format|
      format.html { redirect_to expenses_path, notice: "Expense was successfully deleted.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = current_user.expenses.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expense_params
      params.expect(expense: [ :title, :amount, :expense_date, :note, :category_id ])
    end
end
