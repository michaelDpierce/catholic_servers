class User < ActiveRecord::Base
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

   belongs_to :parish

   validates_presence_of :first_name
   validates_presence_of :last_name
   
end
