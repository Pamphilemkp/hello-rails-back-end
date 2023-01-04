class GreetingsController < ApplicationController
  before_action :set_greeting, only: %i[show edit update destroy]

  # GET /greetings
  def index
    @greetings = Greeting.all
  end
end
