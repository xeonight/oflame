class VoteController < ApplicationController
  
  def vote_up
    @nominee = Nominee.find(params[:id])
    current_user.vote_for(@nominee)
    redirect_to @nominee
  end

  def vote_down
    @nominee = Nominee.find(params[:id])
    current_user.vote_against(@nominee)
    redirect_to @nominee
  end
end
