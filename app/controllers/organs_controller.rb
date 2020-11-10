class OrgansController < ApplicationController

  def index
    @organs = Organ.all
    @user = user
  end
end