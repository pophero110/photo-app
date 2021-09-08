class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    p Rails.configuration.stripe
    p Rails.application.credentials.stripe
    p Stripe.api_key
  end
end
