class OpeningsController < ApplicationController
  def index
    @openings = Opening.all
  end

  # show
  def show
    @opening = Opening.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @opening }
    end
  end
end
