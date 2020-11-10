class OrgansController < ApplicationController

  def index
    @organs = Organ.all
    @user = user
  end

  def show
    @organs = Organ.where(user_id: current_user.id)
  end

  def edit
    tmp = Organ.find(params['id'])
    if tmp.user_id != current_user.id
      redirect_to('/home/show')
    else
      @organ = tmp
    end
  end

  def update
    @organ
  end
end
