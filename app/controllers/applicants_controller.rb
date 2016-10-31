class ApplicantsController < ApplicationController

  # index
  def index
    @applicants = Applicant.all
  end

  # show
  def show
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @applicant }
    end
  end

end
