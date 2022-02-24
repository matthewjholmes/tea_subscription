class Api::V1::SubscriptionsController < ApplicationController

  def create
    subscription = Subscription.new(subscription_params)
    if subscription.save
      render json: SubscriptionSerializer.new(subscription), status: :created
    else
      render json: { errors: { details: "Subscription could not be created with these data."} }, status: :bad_request
    end
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update(status: params[:status])
    render json: { response: 'Subscription has been cancelled.'}, status: :ok
  end

  private

  def subscription_params
    params.permit(:title, :price, :status, :frequency, :quantity, :customer_id, :tea_id)
  end
end
