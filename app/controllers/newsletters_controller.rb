class NewslettersController < ApplicationController
  
  before_action :set_newsletter, only: [:destroy]
  skip_before_action :verify_authenticity_token, only: [:destroy]

  def create
    @newsletter = Newsletter.new(newsletter_params)

    respond_to do |format|
      if @newsletter.save
        format.html { redirect_to root_path, notice: 'Merci de vous être abonné à notre newsletter.' }
      else
        format.html { redirect_to root_path, alert: @newsletter.errors.full_messages.first  }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @newsletter.destroy
        format.html { redirect_to root_path, notice: 'Nous regrettons de vous informer que votre abonnement à notre newsletter a été annulé.' }
      else
        redirect_to root_path, alert: 'Booom'
      end
    end
  end
  

  private

  def set_newsletter
    @newsletter = Newsletter.find params[:id]
  end

  def newsletter_params
    params.require(:newsletter).permit(:email)
  end
end
