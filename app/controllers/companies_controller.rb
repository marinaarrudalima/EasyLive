class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

def new
    @company = Company.new
  end

  private

  def company_params
      params.require(:company).permit(:user_id, :flat_id)
    end
end
