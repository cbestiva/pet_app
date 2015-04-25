class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :gender)
  end
end
