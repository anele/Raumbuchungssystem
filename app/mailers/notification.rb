class Notification < ActionMailer::Base
  default from: "from@example.com"
  
   def new_account(kunde)
    @kunde = kunde
    mail(:to => kunde.email,
         :subject => "The new account #{kunde.vorname} is active.")
  end
  
  def reservation(kunde)
    @kunde = kunde
    mail(:to => kunde.email,
         :subject => "The new account #{kunde.vorname} is active.")
  end
end
