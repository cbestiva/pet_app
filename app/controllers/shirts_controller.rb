class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all
  end

  def new
    @shirt = Shirt.new
    @pets = Pet.all
    3.times {@shirt.pets.build}
  end

  def create
    @shirt = Shirt.new(shirt_params)
    if params[:pet_id1] && params[:pet_id2] && params[:pet_id3] != ""
      pets = Pet.find(params[:pet_id1], params[:pet_id2], params[:pet_id3])
      @shirt.pets << pets
    elsif params[:pet_id1] && params[:pet_id2] != ""
      pets = Pet.find(params[:pet_id1], params[:pet_id2])
      @shirt.pets << pets
    elsif params[:pet_id1] != ""
      pet = Pet.find(params[:pet_id1])
      @shit.pet << pet
    end
    if @shirt.save
      redirect_to pets_url
    else
       render :new
    end
  end

  def edit
    @shirt = Shirt.find(params[:id])
  end

  def update
    @shirt = Shirt.find(params[:id])
    @shirt.update(params[:pet].permit(:color))

    respond_to do |f|
      f.html {reidrect_to pets_url}
    end
  end

  def destroy
    @shirt = Shirt.find(params[:id])
    @shirt.delete

    respond_to do |f|
      f.html {redirect_to pets_url}
    end
  end

  private
  def shirt_params
    params.require(:shirt).permit(:color)
  end
end
