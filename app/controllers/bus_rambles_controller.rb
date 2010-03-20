class BusRamblesController < ApplicationController
  def index
    @buses  = Comment.category_equals(Comment::BUS).all(:limit => 10)
  end
end
