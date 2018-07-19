class MobileController < ApplicationController
  protect_from_forgery with: :null_session

  def menu
    rtc_number = params[:number]
    unless rtc_number.nil?
      redirect_to mobile_card_path(rtc_number)
    end
  end

  def card_details
    @card = Card.find(params[:number])
  end
end
