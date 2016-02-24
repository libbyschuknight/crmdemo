class LeadsController < ApplicationController
  before_action :set_lead, only: [:show]

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      LeadMailer.new_lead(@lead)      
      redirect_to lead_path(@lead), notice: 'Lead was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  private

  def set_lead
    @lead = Lead.find(params[:id])
  end

  def lead_params
    params.require(:lead).permit(:company, :email)
  end
end
