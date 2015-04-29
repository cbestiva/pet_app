class OwnersController < ApplicationController
  def index
    @owners = Owner.all.order(id: :asc)
  end

  def new
    @owner = Owner.new
    @pets = Pet.all
    2.times {@owner.ownerships.build}
  end

  def create
    @owner = Owner.new(owner_params)
    
    if @owner.save
      redirect_to owners_url
    else
      render :new
    end
  end

  def show
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update_attributes(params[:owner].permit(:first_name, :last_name, :gender))

    respond_to do |f|
      f.html {redirect_to owners_url}
    end
  end

  def destroy
    @owner = Owner.find(params[:id])
    @owner.delete

    respond_to do |f|
      f.html {redirect_to owners_url}
    end
  end

  private
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :gender, ownerships_attributes: [:pet_id])
  end
end
