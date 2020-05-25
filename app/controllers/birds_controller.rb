class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds, only: [:id, :name, :species]
  end
  # done

  def show
    bird = Bird.find_by(id: params[:id])
    render json: birds, only: [:id, :name, :species]
  end
end
#submit
