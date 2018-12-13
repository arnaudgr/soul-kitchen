class Subscriber < ApplicationRecord
  
  validates :name, presence: true
  validates :email, presence: true


  def send_newsletter_email
      ContactMailer.subscriber_mailer(self).deliver_later(wait: 1.week)
  end
end
