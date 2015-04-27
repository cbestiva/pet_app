class OwnershipsController < ApplicationController
  def index
    @ownerships = Ownership.all
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

  private
  def ownership_params
    params.require(:ownership).permit(:owner_id, :pet_id)
  end
end
