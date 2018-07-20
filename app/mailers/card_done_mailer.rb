class CardDoneMailer < ApplicationMailer
  default from: "trash.pandas.2018@gmail.com"

  def done(card)
    @card = card
    mail(to: 'brett.mcmillan@nationwide.com', subject: "RTC Card \##{@card.number} is now set to Done")
  end
end
