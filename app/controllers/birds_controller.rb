class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds.to_json, except: [:created_at, :update_at]
  end
end
