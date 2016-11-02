class ApplicantsController < ApplicationController
  def index
    @applicants = Applicant.all

    render json: @applicants
  end

  def show
    @applicant = Applicant.find(params[:id])

    render json: @applicant
  end

  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy
    redirect_to applicants_path
  end

  def create
    @applicant = Applicant.create(applicant_params)
    redirect_to @applicant
  end

  def new
    @applicant = Applicant.new
  end

  def edit
    @applicant = Applicant.find(params[:id])
  end

  def update
    @applicant = Applicant.find(params[:id])
    @applicant.update(applicant_params)
    redirect_to @applicant
  end

  private

  def applicant_params
    params.require(:applicant).permit(:name, :skills, :education, :years_exp, :local)
  end

end
