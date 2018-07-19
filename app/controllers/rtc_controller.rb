class RtcController < ApplicationController
  def menu
    rtc_number = params[:number]
    unless rtc_number.nil?
      redirect_to card_path(rtc_number)
    end
  end

  def card_details
    @card = Card.find(params[:number])
  end
end
