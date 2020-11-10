class OrgansController < ApplicationController

  def index
    @organs = Organ.all
    @user = current_user
  end

  def show
    @organs = Organ.where(user_id: current_user.id)
    @user = current_user
  end

  def edit
    tmp = Organ.find(params[:id])
    if tmp.user_id != current_user.id
      redirect_to('/home/show')
    else
      @organ = tmp
    end
  end

  def update
    organ = Organ.find(params[:organ][:id])
    organ.description = params[:organ][:description]
    organ.price = params[:organ][:price]
    organ.available = params[:organ][:available]
    organ.save
    redirect_to('/home/show')
  end

  def new
    @organ = Organ.new({user_id: current_user.id})
  end

  def create
    organ = Organ.new(organ_params)
    print organ
    organ.save
    redirect_to('/home/show')
  end

  def organ_params
    params.require(:organ).permit(:description, :price, :available, :submit, :organ_type, :user_id)
  end
end
