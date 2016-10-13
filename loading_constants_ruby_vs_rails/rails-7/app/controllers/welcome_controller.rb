class WelcomeController < ApplicationController
  def index
    Apple.new
    head :ok
  end
end
