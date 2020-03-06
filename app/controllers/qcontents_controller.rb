class QcontentsController < ApplicationController
  def new
    @q = Q.find(params[:q_id])
    @qcontent = @q.qcontent
  end
end
