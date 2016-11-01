class OpeningsController < ApplicationController
  def index
    @openings = Opening.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @openings }
    end
  end

  def show
    @opening = Opening.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @opening }
    end
  end

  # def destroy
  #   @opening = Opening.find(params[:id])
  #   @opening.destroy
  #   redirect_to openings_path
  # end

  # <li><%= link_to "delete", opening, method: :delete %></li>

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
