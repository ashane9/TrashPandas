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

  def update
    rtc_number = params[:number]
    @card = Card.find(rtc_number)
    prev_status = @card.status
    if @card.update_attributes(card_params)
      flash[:success] = 'Changes were successfully saved.'
      redirect_to mobile_card_path(rtc_number)
      # CardDoneMailer.card_done(@card.number).deliver if @card.status == 'Set Done' and prev_status != 'Set Done'
    else
      render 'card_details'
    end
  end

  private
  def card_params
    params.require(:card).permit(:summary, :card_type, :status, :points, :owner, :blocked, :iteration)
  end
end
