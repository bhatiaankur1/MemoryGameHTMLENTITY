class GamesController < ApplicationController
before_filter :authenticate_user!
	def index
		if not(params[:level])
			@randomArr = ((0..7).to_a+(0..7).to_a).sort{rand() - 0.5};
			@gridsize = 4
			@level = 1
			@totalopen = 8
			@levelArr = [1,2,3,4]
			@lowestscore = current_user.LowestClicksL1
		elsif((params[:level]) == "1")
			@randomArr = ((0..7).to_a+(0..7).to_a).sort{rand() - 0.5};
			@gridsize = 4
			@level = 1
			@totalopen = 8
			@levelArr = [1,2,3,4]
			@lowestscore = current_user.LowestClicksL1
		elsif((params[:level]) == "2")
			@randomArr = ((0..17).to_a+(0..17).to_a).sort{rand() - 0.5};
			@gridsize = 6
			@level = 2
			@totalopen = 18
			@levelArr = [2,1,3,4]
			@lowestscore = current_user.LowestClicksL2
		elsif((params[:level]) == "3")
			@randomArr = ((0..31).to_a+(0..31).to_a).sort{rand() - 0.5};
			@gridsize = 8
			@level = 3
			@totalopen = 32
			@levelArr = [3,1,2,4]
			@lowestscore = current_user.LowestClicksL3
		elsif((params[:level]) == "4")
			@randomArr = ((0..49).to_a+(0..49).to_a).sort{rand() - 0.5};
			@gridsize = 10	
			@level = 4
			@totalopen = 50
			@levelArr = [4,1,2,3]
			@lowestscore = current_user.LowestClicksL4
		end
		
	end
	def game_end
		@user = User.find(current_user);
		if (params[:gamelevel] == "1")
			@user.LowestClicksL1 = params[:attempts].to_i
		elsif (params[:gamelevel] == "2")
			@user.LowestClicksL2 = params[:attempts].to_i
		elsif (params[:gamelevel] == "3")
			@user.LowestClicksL3 = params[:attempts].to_i
		else
			@user.LowestClicksL4 = params[:attempts].to_i
		end
			@user.save
	end
	def get_topfive
	if not params[:level]
		@val = "\"LowestClicksL1\" DESC"
		@level = "1"
	else
		@val = "\"LowestClicksL" + params[:level] + "\"DESC"
		@level = params[:level]
	end
		@user = User.order(@val).limit(5)
	end

end
