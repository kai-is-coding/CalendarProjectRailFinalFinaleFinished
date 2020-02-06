class UsersController < ApplicationController
  before_action :authenticate_user, except: [:new, :create]
  # before_action :set_appointment, only: [:show, :update, :destroy]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @users = User.
    render :json => @users
  end
  # GET /users/1
  # GET /users/1.json
  def show
    # @user = current_user #User.find params[:id]
    render json: current_user, include: :appointments
  end
  # GET /users/new
  def new
    @user = User.new
  end
  # GET /users/1/edit
  def edit
  end
  # POST /users
  # POST /users.json
  def create
    p 'working from react'
    @user = User.create(user_params)
    if @user.persisted?
      # format.html { redirect_to @user, notice: 'User was successfully created.' }
      render json: {:user_id => @user.id}
    else
      # format.html { render :new }
      render json: {errors: @user.errors.full_messages }, status: 422
    end
  end
  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
