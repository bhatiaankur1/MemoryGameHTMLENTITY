class FeedbackController < ApplicationController
	before_filter :authenticate_user!
	def index
		@levelArr = [6,2,3,4]
	end
	def submitfeedback
		@levelArr = [6,2,3,4]
		FeedbackMailer.send_feedback(params[:q],current_user).deliver!
	respond_to do |format|
        format.html { redirect_to feedackthanks_path }
     end
	end
	def Thanks
		@levelArr = [6,2,3,4]
	end
end
