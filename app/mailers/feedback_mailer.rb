class FeedbackMailer < ActionMailer::Base
  default from: "from@example.com"
  def send_feedback(q,currentuser)
  	@q = q;
mail(:from => "#{currentuser.email}",
     		 :to => "bhatiaankur1@gmail.com",
             :subject => "Feedback from #{currentuser.email}")
end
end
