class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    p ENV["SENDGRID_PASSWORD"]
    p ENV["SENDGRID_USERNAME"]
  end
end
