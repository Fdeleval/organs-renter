class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def values
  end

  def carer
  end

  def faqs
  end

  def who
  end
end
