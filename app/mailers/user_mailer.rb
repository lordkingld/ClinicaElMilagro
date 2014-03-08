class UserMailer < ActionMailer::Base

  def cancellation_of_appointment(user, appointment)
    @appointment = appointment
    mail(:to => user.email, :subject => "Cancellation of appointment",:from => "dont-reply@princetonhospital.com")  
  end
  
end
