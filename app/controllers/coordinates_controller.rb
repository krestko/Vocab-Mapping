class CoordinatesController < ApplicationController
  before_action :find_route

  def index
    @route = @route.coordinates
  end

  def new
    @coordinate = Coordinate.new
  end

  def create
    @coordinate = Coordinate.new(coordinate_params)
    if @coordinate.save
      redirect_to "/users/#{@user.id}/routes/#{@route.id}/coordinates/#{@coordinate.id}"
    else
      flash[:error] = 'Messed Up My Friend'
      redirect_to "/users/#{@user.id}/routes/#{@route.id}/coordinates"
    end
  end

  def show
    @coordinate = Coordinate.find(params[:id])
  end

  def edit
    @coordinate = Coordinate.find(params[:id])
  end

  def update
    @coordinate = Coordinate.find(params[:id])
    if @coordinate.update_attributes(coordinate_params)
      flash[:success] = 'Updated Successfully'
      redirect_to "/users/#{@user.id}/routes/#{@route.id}/coordinates/#{@coordinate.id}"
    else
      flash[:error] = 'Messed Up My Friend'
      redirect_to "/users/#{@user.id}/routes/#{@route.id}/coordinates/#{@coordinate.id}"
    end
  end

  def destroy
    @coordinate = Coordinate.find(params[:id])
    @coordinate.destroy
    redirect_to "/users/#{@user.id}/routes/#{@route.id}/coordinates"
  end

  private

  def find_route
    @route = Route.find(params[:id])
  end

  def coordinate_params
    params.permit(:coordinate_number, :english_word, :foreign_word).merge(route_id: params[:route_id].to_i)
  end
end