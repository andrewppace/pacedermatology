class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @contacter = Contacter.new
  end
end
