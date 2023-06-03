class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
       
   if current_login.roles.first[:name]=="admin"
    admin_index_path(current_login)
   elsif current_login.roles.first[:name]=="editor"
    editor_index_path(current_login)
else
end
end 
end
