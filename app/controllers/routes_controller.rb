class RoutesController < ApplicationController
  before_action :find_user

  def index
    @routes = @user.routes
  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)
    if @route.save
      redirect_to "/users/#{@user.id}/routes/#{@route.id}"
    else
      flash[:error] = 'Messed Up My Friend'
      redirect_to "/users/#{@user.id}/routes"
    end
  end

  def show
    @route = Route.find(params[:id])
  end

  def edit
    @route = Route.find(params[:id])
  end

  def update
    @route = Route.find(params[:id])
    if @route.update_attributes(route_params)
      flash[:success] = 'Updated Successfully'
      redirect_to "/users/#{@user.id}/routes/#{@route.id}"
    else
      flash[:error] = 'Messed Up My Friend'
      redirect_to "/users/#{@user.id}/routes"
    end
  end

  def destroy
    @route = Route.find(params[:id])
    @route.destroy
    redirect_to "/users/#{@user.id}/routes"
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def route_params
    params.permit(:route_name).merge(user_id: params[:user_id].to_i)
  end
end