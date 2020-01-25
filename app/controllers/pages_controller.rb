class PagesController < ApplicationController
  def index
    @names = ' - Bienvenido'
  end

  def we
    @names = ' - Nosotros'
  end

  def new
    @names = ' - Noticias'
  end

  def type
    @institutions = Institution.all
    @names = ' - Instituciones'
  end

  def filter
  end

  def team
    @names = ' - Equipo'
    @myinstitution = Institution.joins(:users)
    @myuser = User.joins(:institution)
  end
end
