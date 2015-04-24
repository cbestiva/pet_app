class PetsController < ApplicationController
  def index
    Pet.all
  end

  def new
    @pet = Pet.new
  end
  
  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to root_url
    else
      render :new
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update_attributes(params[:pet].permit(:name, :age, :type))
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.delete
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :age, :type)
  end
end