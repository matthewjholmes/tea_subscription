require 'rails_helper'

RSpec.describe Api::V1::CustomerSubscriptionsController, type: :controller  do
  describe 'Get /api/v1/customer_subscriptions' do
    it 'should create a subscription if given valid params' do
      tea = create(:tea)
      customer = create(:customer)
      subscription1 = create :subscription, { tea: tea, customer: customer }
      subscription2 = create :subscription, { tea: tea, customer: customer }

      customer_subscription_params = {
        customer_id: customer.id
      }
      headers = {"CONTENT_TYPE" => "application/json"}

      get :index, params: customer_subscription_params

      expect(response).to be_successful
      expect(response.status).to eq(200)
    end
  end

end
