module Admin
  class UsersController < ApplicationController

    before_action :not_authorized?

  # GET /admin/users
  # GET /admin/users.json
    def index
      @users = User.all
    end

  # GET /admin/users/1
  # GET /admin/users/1.json
    def show

    end

    # GET /admin/users/new
    def new
    end

    # GET /admin/users/1/edit
    def edit
    end

    # POST /admin/users
    # POST /admin/users.json
    def create
  
    end

    # PATCH/PUT /admin/users/1
    # PATCH/PUT /admin/users/1.json
    def update

    end

    # DELETE /admin/users/1
    # DELETE /admin/users/1.json
    def destroy

    end

    private

    def not_authorized?
      unless current_user && current_user.admin
        redirect_to movies_path, notice: "Oops! You're not allowed to access this page."  
      end
    end
  end 
end
