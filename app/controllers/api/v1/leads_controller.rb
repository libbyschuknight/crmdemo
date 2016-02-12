class Api::V1::LeadsController < ApiController
  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      render status: 201
    else
      render json: {
          message: 'Validation Failed',
          errors: @lead.errors.full_messages
      }, status: 422
    end
  end

  private

  def lead_params
    {
        company: params[:company],
        email: params[:email]
    }
  end
end