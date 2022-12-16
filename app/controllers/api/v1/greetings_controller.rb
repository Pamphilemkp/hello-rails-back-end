module Api
  module V1
    class GreetingsController < ApplicationController
      before_action :set_greeting, only: %i[show edit update destroy]

      # GET /greetings
      def index
        @greetings = Greeting.all
        @greeting = @greetings.sample

        render json: @greeting
      end
    end
  end
end
