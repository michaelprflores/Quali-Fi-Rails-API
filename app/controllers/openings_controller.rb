class OpeningsController < ApplicationController
  def index
    @openings = Opening.all

    render json: @openings
  end

  def show
    @opening = Opening.find(params[:id])

    render json: @opening
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

  def edit
    @opening = Opening.find(params[:id])
  end

  def update
    @opening = Opening.find(params[:id])
    @opening.update(opening_params)
    redirect_to @opening
  end

  private

  def opening_params
    params.require(:opening).permit(:opening_name, :skills, :education, :years_exp, :local)
  end
end
