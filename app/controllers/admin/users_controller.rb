module Admin
  class UsersController < ApplicationController

    before_action :not_authorized?

  # GET /admin/users
  # GET /admin/users.json
    def index
      @users = User.all.page(params[:page]).per(10)
    end

  # GET /admin/users/1
  # GET /admin/users/1.json

    # GET /admin/users/new
    def new
      @user = User.new
    end

    # GET /admin/users/1/edit
    def edit
      @user = User.find(params[:id])
    end

    # POST /admin/users
    # POST /admin/users.json
    def create
      @user = User.new(user_params)

      if @user.save
        session[:user_id] = @user.id
        redirect_to movies_path, notice: "Welcome aboard, #{@user.firstname}!"
      else
        render :new
      end
    end

    # PATCH/PUT /admin/users/1
    # PATCH/PUT /admin/users/1.json
    def update
      @user = User.find(params[:id])

      if @user.update_attributes(user_params)
        redirect_to admin_users_path(@user)
      else 
        render :edit
      end
    end

    # DELETE /admin/users/1
    # DELETE /admin/users/1.json
    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to admin_users_path
    end

    private

    def not_authorized?
      unless current_user && current_user.admin
        redirect_to movies_path, notice: "Oops! You're not allowed to access this page."  
      end
    end
  end 
end