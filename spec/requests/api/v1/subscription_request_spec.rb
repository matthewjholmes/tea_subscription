require 'rails_helper'

RSpec.describe Api::V1::SubscriptionsController, type: :controller  do
  describe 'POST /api/v1/subscriptions' do
    it 'should create a subscription if given valid params' do
      tea = create(:tea)
      customer = create(:customer)

      subscription_params = {
        title: 'My Subscription',
        price: 9.99,
        status: 'active',
        frequency: 4,
        quantity: 1,
        customer_id: customer.id,
        tea_id: tea.id
      }
      headers = {"CONTENT_TYPE" => "application/json"}

      post :create, params: subscription_params

      expect(response).to be_successful
      expect(response.status).to eq(201)
    end
  end
end
