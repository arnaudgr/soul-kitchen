class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmablerails g letsrate user, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :send_welcome_email


  # has_many :categories, optional: true
  belongs_to :week, optional: true
  has_many :categories, through: :user_categorie_recipe

  private

    def send_welcome_email
      ContactMailer.welcome(self).deliver_now
    end
    
end
