class ApplicantsController < ApplicationController
  def index
    @applicants = Applicant.all
  end

  def show
    @applicant = Applicant.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @applicant }
    end
  end

end
