class QsController < ApplicationController
  def index
    @qs = Q.where(category_id: params[:category_id])
  end
end
