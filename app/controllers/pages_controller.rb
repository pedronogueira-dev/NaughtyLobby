class PagesController < ApplicationController
  def home
    @politicians = Politician.top(3)# Politician.all
  end
end
