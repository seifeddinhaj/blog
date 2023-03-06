class NewsletterMailer < ApplicationMailer
    def confirmation_email(newsletter)
        @newsletter = newsletter
        mail(to: @newsletter.email, subject: "Confirmation d'abonnement à notre newsletter")
    end
end
