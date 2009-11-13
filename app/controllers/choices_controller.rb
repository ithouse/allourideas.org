class ChoicesController < ApplicationController
  def show
    @choice = Choice.find(params[:id], :params => {:question_id => params[:question_id]})
    if @choice
      @data = @choice.attributes['data']
      @score = @choice.attributes['score']
      @created_at = @choice.attributes['created_at']
      @votes_count = @choice.attributes['votes_count']
      respond_to do |format|
        format.html # show.html.erb
      end
    else
      redirect_to('/') and return
    end
  end
end