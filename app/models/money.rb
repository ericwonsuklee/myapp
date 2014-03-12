class Money < ActiveRecord::Base
    validates :description, :amount, presence:true

end
