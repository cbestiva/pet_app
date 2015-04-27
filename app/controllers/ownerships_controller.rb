class OwnershipsController < ApplicationController
  def index
    @ownerships = Ownership.all.order(pet_id: :asc)
  end

  def new
    @ownership = Ownership.new
    @owners = Owner.all
    @pets = Pet.all
  end
  
  def create
    @ownership = Ownership.new(ownership_params)
    @ownership.save
    if @ownership.save
      redirect_to root_url
    else
      @owners = Owner.all
      @pets = Pet.all
      render :new
    end
  end

  def edit
    @ownership = Ownership.find(params[:id])
    @owners = Owner.all
    @pets = Pet.all
  end

  def update
    @ownership = Ownership.find(params[:id])
    @ownership.update_attributes(params[:ownership].permit(:owner_id, :pet_id))

    respond_to do |f|
      f.html {redirect_to root_url}
    end
  end

  def destroy
    @ownership = Ownership.find(params[:id])
    @ownership.delete

    respond_to do |f|
      f.html {redirect_to pets_url}
    end
  end

  private
  def ownership_params
    params.require(:ownership).permit(:owner_id, :pet_id)
  end
end
