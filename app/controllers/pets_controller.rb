class PetsController < ApplicationController
  def index
    Pet.all
  end

  def new
    @pet = Pet.new(pet_params)
  end
  
  def create
    @pet = Pet.create(pet_params)
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
