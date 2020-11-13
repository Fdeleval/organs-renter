class OrgansController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    if current_user == nil
      u_id = 0
    else
      u_id = current_user.id
    end

    if params[:query].present?
      @user = current_user
      sql_query = " \
        organs.organ_type @@ :query \
        OR users.fullname @@ :query \
        "
      organs = Organ.joins(:user).where(sql_query, query: params[:query])
      @organs = remove_user_unavailable_organs(organs, u_id)
    else
      organs = Organ.all
      @organs = remove_user_unavailable_organs(organs, u_id)
      @user = current_user
      # flash[:alert] = "Organ not found."
    end

    @markers = User.all.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def myOrgans()
    @organs = Organ.where(user_id: current_user.id)
    @user = current_user
  end

  def remove_user_unavailable_organs(organs, u_id)
    org = []
    organs.each do |item|
      if item.user.id != u_id || item.available != false
        org.push(item)
      end
    end
    return org
  end

  def show
    # @user = current_user
    # @organs = Organ.where(user_id: @user.id)
    @organ = Organ.find(params[:id])
    @user = current_user
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
