class InstitutionController < ApplicationController
  respond_to :html
  before_action :set_institution, only: [:show, :edit, :update, :destroy]

  def index
    @institutions = Institution.all
  end

  def show
  end

  def new
    @institution = Institution.new
  end

  def edit
  end

  def create
    @institution = Institution.new(institution_params)
    @institution.save
    respond_with(@institution)
  end

  def update
    @institution.update(institution_params)
  end
  def destroy
    @institution.destroy
  end

  private
  def set_institution
    @institution = Institution.find(params[:id])
  end

  def institution_params
    params.require(:institution).permit(:name)
  end
end
