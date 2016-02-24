class LeadMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def new_lead(lead)
    @lead = lead
    mail(to: 'sale@example.com', subject: 'Added new lead')
  end
end