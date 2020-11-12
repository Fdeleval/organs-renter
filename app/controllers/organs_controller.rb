class OrgansController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    if params[:query].present?
      @user = current_user
      @organs = Organ.where("organ_type ILIKE ?", "%#{params[:query].downcase}%")
    else
      @organs = Organ.all
      @user = current_user
    end
  end

  def show
    @user = current_user
    @organs = Organ.where(user_id: @user.id)
  end

  def edit
    tmp = Organ.find(params[:id])
    if tmp.user_id != current_user.id
      redirect_to organ_path
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

    redirect_to organ_path
  end

  def new
    @organ = Organ.new({ user_id: current_user.id })
  end

  def create
    @organ = Organ.new(organ_params)
    print @organ
    @organ.save
    redirect_to organ_path(@organ)
  end

  def organ_params
    params.require(:organ).permit(:description, :price, :available, :submit, :organ_type, :user_id)
  end
end
