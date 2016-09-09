class User < ActiveRecord::Base
has_many :posts
has_many :replies
has_many :bookreplies
has_many :books
has_many :faqs
has_many :faq_replies

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
end
