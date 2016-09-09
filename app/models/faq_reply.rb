class FaqReply < ActiveRecord::Base
    
    belongs_to :user
    belongs_to :faq
    
end
