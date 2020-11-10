class OrgansController < ApplicationController

  def index
    @organs = Organ.all
  end

  def show
    @organs = Organ.where(user_id: current_user.id)
  end
end
