class PagesController < ApplicationController
  def home
    @politicians = Politician.all
  end
end
