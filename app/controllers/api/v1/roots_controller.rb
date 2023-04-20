# app/controllers/api/messages_controller.rb
module Api
  class Api::V1::RootsController < ApplicationController
    def index
      @greeting = Message.order('RANDOM()').first
      render json: @greeting
    end
  end
end
