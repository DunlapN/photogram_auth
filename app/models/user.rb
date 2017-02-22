class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


         has_many :likes, :class_name => "Like", :foreign_key => "user_id"
         has_many :comments, :class_name => "Comment", :foreign_key => "user_id"
         has_many :photos, :class_name => "Photo", :foreign_key => "user_id"
         has_many :photos, :through => :likes
         has_many :photos, :through => :comments

         validates :username, :presence => true, :uniqueness => true

end