class FrenchiesController < ApplicationController

def index
    Giphy.trending(limit: 5)
@frenchies = Giphy.trending(limit: 5) 
end

end
