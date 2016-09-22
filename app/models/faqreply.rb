class Faqreply < ActiveRecord::Base
    belongs_to :faq
    belongs_to :user
end
