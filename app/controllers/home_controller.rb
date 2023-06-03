class HomeController < ApplicationController
  def index
    @posts = Admin.paginate(page: params[:page], per_page: 1)


    @categorys = Category.all
    @admins=Admin.all.order("created_at DESC")
    
    @breaking= Admin.where(category_id: 1).order("created_at DESC")
    @sport= Admin.where(category_id: 2).order("created_at DESC")
    @Entertainment= Admin.where(category_id: 3).order("created_at DESC")
    @Business=Admin.where(category_id: 4).order("created_at DESC")
    @Economics=Admin.where(category_id: 5).order("created_at DESC")
    @Current=Admin.where(category_id: 6).order("created_at DESC")
   


    
  end
  def show
    @admin= Admin.find(params[:id])
  
   
  end
end
