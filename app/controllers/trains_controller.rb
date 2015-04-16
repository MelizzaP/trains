class TrainsController < ApplicationController
  def index
    @trains = Train.all
  end

  def create
  end

  def update
  end
  
  def edit
  end

  def destroy
    Train.destroy(params['id'])
    redirect_to root_path, notice: 'Train successfully deleted'
  end
  
  def import
    Train.import(params[:file])
    redirect_to root_path, notice: 'File Added Successfully, Congrats bro'
  end
end
