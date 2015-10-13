class FrenchiesController < ApplicationController


def index
@frenchies = Giphy.trending(limit: 5) 
end

end
