class Newsletter < ApplicationRecord
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    after_create :send_email_newsletter_confirmation

    def send_email_newsletter_confirmation
        NewsletterMailer.confirmation_email(self).deliver_now
    end
end
