class TrainsController < ApplicationController
  def index
    @trains = Train.all.sort_by{ |t| t.run_number }
    @trains = Kaminari.paginate_array(@trains).page(params[:page]).per(5)                           
  end
  
  def new
    @train = Train.new
  end

  def create
    train = Train.new(params['id'])
    train.train_line = params['train']['train_line']
    train.route_name = params['train']['route_name']
    train.run_number = params['train']['run_number']
    train.operator_id = params['train']['operator_id']
    train.save
    redirect_to root_path, notice: 'Train ' + params['train']['run_number'] + ' Created'
  end

  def update
    train = Train.find(params['id'])
    train.train_line = params['train']['train_line']
    train.route_name = params['train']['route_name']
    train.run_number = params['train']['run_number']
    train.operator_id = params['train']['operator_id']
    train.save
    redirect_to root_path, notice: 'Train ' + params['train']['run_number'] + ' Updated'
  end
  
  def edit
    @train = Train.find(params['id'])
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
