class PagesController < ApplicationController
  def index
  end

  def client
  end

  def contact
  end

  def invitade
  end

  def new
  end

  def type
    @institutions = Institution.all
  end

  def filter
  end
end
