class Address < ApplicationRecord
   
    validates :member_id, presence: true, uniqueness: true
    validates :permanent_zip, presence: true
    validates :communication_zip, presence: true
    
    def is_available?
        Time.now >= created_at
      end
        
end
