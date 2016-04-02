class GymsController < ApplicationController
  def index
    @gyms = Gym.all 
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    gym = Gym.create(
      equipment_type: params[:equipment_type],
      description: params[:description],
      good_for: params[:good_for]
    )
    flash[:warning] = "Equipment Created!"
    redirect_to "/gyms/#{gym.id}"
    
  end

  def show
    gym_id = params[:id]
    @gym = Gym.find_by(id: gym_id)
    render 'show.html.erb'
  end

  def edit
    gym_id = params[:id]
    @gym = Gym.find_by(id: gym_id)
    render 'edit.html.erb'
  end

  def update
    gym_id = params[:id]
    @gym = Gym.find_by(id: gym_id)
    @gym.update(
      equipment_type: params[:equipment_type],
      description: params[:description],
      good_for: params[:good_for]
    )
    flash[:success] = "Equipment Restored!"
    redirect_to "/gyms/#{@gym.id}"
  end

  def destroy
    gym_id = params[:id]
    @gym = Gym.find_by(id: gym_id)
    @gym.destroy
    flash[:danger] = "Equipment Destroyed!"
    redirect_to '/gyms'
  end
end
