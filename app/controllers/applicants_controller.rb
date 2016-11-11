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
    render json: {success: true}  # AM: Nice.
  end

  def create
    @applicant = Applicant.create(applicant_params)
    render json: @applicant
  end

  def new   # AM: If you're using a front-end to generate a form, do you need this action?
    @applicant = Applicant.new
  end

  def edit  # AM: My previous comment applies here as well.
    @applicant = Applicant.find(params[:id])
  end

  def update
    @applicant = Applicant.find(params[:id])
    @applicant.update(applicant_params)
    render json: @applicant
  end

  private

  def applicant_params
    params.require(:applicant).permit(:name, :skills, :education, :years_exp)
  end

end
