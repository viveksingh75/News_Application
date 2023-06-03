class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  
    def convert_utc_to_system_time(utc_time)
      system_time = utc_time.getlocal
      return system_time
   
  end
end
