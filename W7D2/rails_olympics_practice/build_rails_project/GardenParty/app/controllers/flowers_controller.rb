class FlowersController < ApplicationController

  def create
    @flower = Flower.new(flower_params)
    @flower.save
    redirect_to garden_url(@flower.garden_id)
  end

  def destroy
    flower = Flower.find_by(id: params[:id])
    Flower.delete(flower)
    redirect_to garden_url(flower.garden_id)
  end

  def flower_params
    params.require(:flower).permit(:flower_type, :gardener_id, :garden_id)
  end
end