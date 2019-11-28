class ResultsController < ApplicationController
  def new
    @result = Result.new
    @result.studytime = params[:studytime]
  end
end
