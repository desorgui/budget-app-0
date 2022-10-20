class UserTrasactionsController < ApplicationController
  before_action :set_user_trasaction, only: %i[ show edit update destroy ]

  # GET /user_trasactions or /user_trasactions.json
  def index
    @user_trasactions = UserTrasaction.all
  end

  # GET /user_trasactions/1 or /user_trasactions/1.json
  def show
  end

  # GET /user_trasactions/new
  def new
    @user_trasaction = UserTrasaction.new
  end

  # GET /user_trasactions/1/edit
  def edit
  end

  # POST /user_trasactions or /user_trasactions.json
  def create
    @user_trasaction = UserTrasaction.new(user_trasaction_params)

    respond_to do |format|
      if @user_trasaction.save
        format.html { redirect_to user_trasaction_url(@user_trasaction), notice: "User trasaction was successfully created." }
        format.json { render :show, status: :created, location: @user_trasaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_trasaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_trasactions/1 or /user_trasactions/1.json
  def update
    respond_to do |format|
      if @user_trasaction.update(user_trasaction_params)
        format.html { redirect_to user_trasaction_url(@user_trasaction), notice: "User trasaction was successfully updated." }
        format.json { render :show, status: :ok, location: @user_trasaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_trasaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_trasactions/1 or /user_trasactions/1.json
  def destroy
    @user_trasaction.destroy

    respond_to do |format|
      format.html { redirect_to user_trasactions_url, notice: "User trasaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_trasaction
      @user_trasaction = UserTrasaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_trasaction_params
      params.require(:user_trasaction).permit(:name, :photo, :description, :payment, :category_id)
    end
end
