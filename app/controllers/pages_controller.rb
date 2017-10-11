class PagesController < ApplicationController
  def index
    @response = HTTParty.get('http://api.icndb.com/jokes/random')
    @joke = @response['value']['joke']
  end
end
