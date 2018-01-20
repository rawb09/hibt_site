class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lastseenable, :onliner
  has_many :reviews

 def online
    @online = User.where('last_seen > ?', 2.minutes.ago)
  end

end


