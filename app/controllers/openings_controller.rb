class OpeningsController < ApplicationController
  def index
    @openings = Opening.all
  end

  def show
    @opening = Opening.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @opening }
    end
  end

  def destroy
    @opening = Opening.find(params[:id])
    @opening.destroy
    redirect_to openings_path
  end

  def create
    @opening = Opening.create(opening_params)
    redirect_to @opening
  end

  def new
    @opening = Opening.new
  end

  private

  def opening_params
    params.require(:opening).permit(:opening_name, :skills, :education, :year_exp, :local)
  end
end
