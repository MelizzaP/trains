class TrainsController < ApplicationController
  def index
    @trains = Train.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
