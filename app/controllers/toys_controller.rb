class ToysController < ApplicationController
  def index
    @toys = Toy.all.order(pet_id: :asc)
  end

  def new
    @toy = Toy.new
    @pets = Pet.all
  end

  def create
    @toy = Toy.new(toy_params)

    if @toy.save 
      redirect_to toys_url
    else
      render :new
    end
  end

  def edit
    @toy = Toy.find(params[:id])
    @pets = Pet.all
  end

  def update
    @toy = Toy.find(params[:id])
    @toy.update_attributes(params[:toy].permit(:name, :color, :pet_id))

    respond_to do |f|
      f.html {redirect_to toys_url}
    end
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.delete

    respond_to do |f|
      f.html {redirect_to toys_url}
    end
  end

  private
  def toy_params
    params.require(:toy).permit(:name, :color, :pet_id)
  end
end
