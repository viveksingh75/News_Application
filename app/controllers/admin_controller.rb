require 'time'
class AdminController < ApplicationController
  before_action :authenticate_login!
  def index
    @admins = Admin.all.order("created_at DESC")
    @breaking= Admin.where(category_id:1).order("created_at DESC")
  end

    def show  
      @admin= Admin.find(params[:id])
      
    end
    
     def new
      @admin= Admin.new
    end
    
    def create
    
    
      @admin = Admin.new( category_id:params[:category_id], Short_Discription:params[:Short_Discription],Full_Discription:params[:Full_Discription], City: params[:City],Author:params[:Author],Title: params[:Title],images:params[:images],video:params[:video])
     
      if @admin.save
     
        redirect_to @admin
      else
        render :new
      end
    end  
  
  
  
    def edit
      @admin = Admin.find(params[:id])
    end
  
    def update
      @admin = Admin.find(params[:id])
     
      if @admin.update(admin_params)
        redirect_to @admin,notice:"update user successfully"
      else
        render :edit
      end
    end
  
    def destroy
      @admin = Admin.find(params[:id])
      @admin.destroy
      redirect_to admin_url,status: :see_other
    end
  
    private
      def admin_params
        params.require(:admin).permit(:category_id ,:City,:Author,:Title,:Short_Discription,:Full_Discription,:video,images:[])
      end
     
  end
  


